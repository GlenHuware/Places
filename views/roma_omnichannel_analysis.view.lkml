view: roma_macro_analysis {
  derived_table: {
    sql:
      WITH fashion_places AS (
        SELECT WITH AGGREGATION_THRESHOLD
          quartiere_reale,
          COUNT(IF(primary_type = 'clothing_store', 1, NULL)) AS competitor_count,
          SUM(user_rating_count) AS traffic_score,
          COUNT(IF(primary_type = 'clothing_store' AND price_level IN ('PRICE_LEVEL_EXPENSIVE', 'PRICE_LEVEL_VERY_EXPENSIVE'), 1, NULL)) AS luxury_stores_count,
          COUNT(IF(primary_type = 'shopping_mall', 1, NULL)) AS mall_count,
          AVG(IF(primary_type = 'clothing_store', rating, NULL)) AS average_competitor_rating
        FROM
          `hw-test-placeinsight.places_insights___it___sample.places_sample`,
          UNNEST(neighborhood_names) AS quartiere_reale
        WHERE
          ARRAY_LENGTH(neighborhood_names) > 0
        GROUP BY 1
      )

      SELECT
      e.quartiere,
      e.cap,
      e.online_revenue,
      e.online_orders,
      COALESCE(p.competitor_count, 0) AS competitor_count,
      COALESCE(p.traffic_score, 0) AS traffic_score,
      COALESCE(p.luxury_stores_count, 0) AS luxury_stores_count,
      COALESCE(p.mall_count, 0) AS mall_count,
      ROUND(p.average_competitor_rating, 1) AS average_competitor_rating
      FROM `hw-test-placeinsight.places.fashion_ecommerce_mock` e
      LEFT JOIN fashion_places p ON e.quartiere = p.quartiere_reale
      ;;
  }

  # --- DIMENSIONI (Campi di raggruppamento e filtri) ---

  dimension: quartiere {
    type: string
    sql: ${TABLE}.quartiere ;;
    label: "Quartiere"
    description: "Nome del quartiere/rione reale estratto da Google Places"
  }

  dimension: cap {
    type: zipcode
    primary_key: yes
    sql: ${TABLE}.cap ;;
    label: "CAP Roma"
    description: "Codice di Avviamento Postale (sblocca la mappa geografica su Looker)"
  }

  dimension: area_segmentation {
    type: string
    label: "Segmentazione Strategica"
    description: "Algoritmo decisionale basato sul bilanciamento tra Fisico (Google) e Online (E-commerce)"
    sql:
      CASE
        WHEN ${TABLE}.competitor_count < 5 AND ${TABLE}.online_revenue > 200000 THEN '🔴 WHITESPACE: Ottimo Online, Basso Presidio Fisico'
        WHEN ${TABLE}.traffic_score > 15000 AND ${TABLE}.online_revenue > 300000 THEN '⭐ FLAGSHIP TARGET: Alto Passaggio e Online Dominante'
        WHEN ${TABLE}.competitor_count > 20 AND ${TABLE}.online_revenue < 100000 THEN '⚠️ MERCATO SATURO: Troppa Concorrenza, Basso Online'
        ELSE '🟢 ZONA STANDARD: Performance Bilanciate'
      END ;;
  }

  # --- MISURE (Metriche aggregate e performance) ---

  measure: total_online_revenue {
    type: sum
    sql: ${TABLE}.online_revenue ;;
    value_format_name: eur_0
    label: "Fatturato E-commerce"
  }

  measure: total_orders {
    type: sum
    sql: ${TABLE}.online_orders ;;
    label: "Ordini Online"
  }

  measure: competitor_count {
    type: sum
    sql: ${TABLE}.competitor_count ;;
    label: "Numero Competitor"
  }

  measure: traffic_score {
    type: sum
    sql: ${TABLE}.traffic_score ;;
    label: "Punteggio Traffico Pedonale"
    description: "Indicatore di popolarità commerciale basato sul volume di recensioni Google Maps"
  }

  measure: luxury_stores_count {
    type: sum
    sql: ${TABLE}.luxury_stores_count ;;
    label: "Negozi Fashion Premium/Lusso"
  }

  measure: mall_count {
    type: sum
    sql: ${TABLE}.mall_count ;;
    label: "Numero Centri Commerciali"
  }

  measure: average_competitor_rating {
    type: average
    sql: ${TABLE}.average_competitor_rating ;;
    value_format_name: decimal_1
    label: "Rating Medio Competitor"
    description: "Punteggio medio in stelle dei competitor (Google Maps)"
  }
}
