view: roma_micro_h3_analysis {

  derived_table: {
    sql:
      SELECT
        h3_cell_index,
        count,
        -- Prendiamo il campo "geography" nativo della routine e lo passiamo a Looker come stringa JSON
        ST_ASGEOJSON(geography) AS hexagon_geometry,
        ST_Y(ST_CENTROID(geography)) AS hex_lat,
        ST_X(ST_CENTROID(geography)) AS hex_lon
      FROM
        `hw-test-placeinsight.places_insights___it___sample.PLACES_COUNT_PER_H3`(
          JSON_OBJECT(
            'types', JSON_ARRAY({% parameter category_filter %}),
            'h3_resolution', {% parameter h3_resolution_filter %},
            'geography', ST_GEOGFROMTEXT('POLYGON((12.35 41.75, 12.65 41.75, 12.65 42.05, 12.35 42.05, 12.35 41.75))')
          )
        )
    ;;
  }

  # --- FILTRI DINAMICI (LIQUID) ---

  parameter: category_filter {
    type: string
    label: "1. Tipo di Attrattore"
    allowed_value: { label: "Negozi di Abbigliamento" value: "clothing_store" }
    allowed_value: { label: "Negozi di Scarpe" value: "shoe_store" }
    allowed_value: { label: "Centri Commerciali" value: "shopping_mall" }
    default_value: "clothing_store"
  }

  parameter: h3_resolution_filter {
    type: unquoted
    label: "2. Precisione Esagoni H3"
    allowed_value: { label: "Risoluzione 8 (Macro-Isolato)" value: "8" }
    allowed_value: { label: "Risoluzione 9 (Dettaglio Via)" value: "9" }
    allowed_value: { label: "Risoluzione 10 (Massimo Dettaglio)" value: "10" }
    default_value: "9"
  }

  # --- DIMENSIONI ---

  dimension: h3_cell_index {
    primary_key: yes
    hidden: yes # Nascondiamo l'indice perché all'utente interessa vedere solo la mappa
    type: string
    sql: ${TABLE}.h3_cell_index ;;
  }

  dimension: hexagon_geometry {
    type: string
    sql: ${TABLE}.hexagon_geometry ;;
    label: "Griglia (Poligono H3)"
  }

  dimension: hexagon_center {
    type: location
    sql_latitude: ${TABLE}.hex_lat ;;
    sql_longitude: ${TABLE}.hex_lon ;;
    label: "Centro Esagono (Mappa)"
  }

  # --- MISURE ---

  measure: density_score {
    type: sum
    sql: ${TABLE}.count ;;
    label: "Densità Negozi (Google Maps)"
  }
}
