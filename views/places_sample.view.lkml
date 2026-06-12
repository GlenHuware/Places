# The name of this view in Looker is "Places Sample"
view: places_sample {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `places_insights___it___sample.places_sample` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Accepts Cash Only" in Explore.

  dimension: accepts_cash_only {
    type: yesno
    description: "Place accepts cash only as payment. Places with this attribute may still accept other payment methods."
    sql: ${TABLE}.accepts_cash_only ;;
  }

  dimension: accepts_credit_cards {
    type: yesno
    description: "Place accepts credit cards as payment."
    sql: ${TABLE}.accepts_credit_cards ;;
  }

  dimension: accepts_debit_cards {
    type: yesno
    description: "Place accepts debit cards as payment."
    sql: ${TABLE}.accepts_debit_cards ;;
  }

  dimension: accepts_nfc {
    type: yesno
    description: "Place accepts NFC payments."
    sql: ${TABLE}.accepts_nfc ;;
  }

  dimension: administrative_area_level_1_id {
    type: string
    description: "The place id of the administrative area. See https://developers.google.com/maps/documentation/places/web-service/place-id."
    sql: ${TABLE}.administrative_area_level_1_id ;;
  }

  dimension: administrative_area_level_1_name {
    type: string
    description: "The name of the administrative area."
    sql: ${TABLE}.administrative_area_level_1_name ;;
  }

  dimension: administrative_area_level_2_id {
    type: string
    description: "The place id of the administrative area. See https://developers.google.com/maps/documentation/places/web-service/place-id."
    sql: ${TABLE}.administrative_area_level_2_id ;;
  }

  dimension: administrative_area_level_2_name {
    type: string
    description: "The name of the administrative area."
    sql: ${TABLE}.administrative_area_level_2_name ;;
  }

  dimension: administrative_area_level_3_id {
    type: string
    description: "The place id of the administrative area. See https://developers.google.com/maps/documentation/places/web-service/place-id."
    sql: ${TABLE}.administrative_area_level_3_id ;;
  }

  dimension: administrative_area_level_3_name {
    type: string
    description: "The name of the administrative area."
    sql: ${TABLE}.administrative_area_level_3_name ;;
  }

  dimension: allows_dogs {
    type: yesno
    description: "Place allows dogs."
    sql: ${TABLE}.allows_dogs ;;
  }

  dimension: business_status {
    type: string
    description: "The business status for the place. Possible values are \"OPERATIONAL\", \"CLOSED_TEMPORARILY\", and \"CLOSED_PERMANENTLY\"."
    sql: ${TABLE}.business_status ;;
  }

  dimension: country_code {
    type: string
    description: "The country code in the Unicode CLDR format."
    sql: ${TABLE}.country_code ;;
  }

  dimension: curbside_pickup {
    type: yesno
    description: "Place supports curbside pickup."
    sql: ${TABLE}.curbside_pickup ;;
  }

  dimension: delivery {
    type: yesno
    description: "Place supports delivery."
    sql: ${TABLE}.delivery ;;
  }

  dimension: dine_in {
    type: yesno
    description: "Place supports indoor or outdoor seating options."
    sql: ${TABLE}.dine_in ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: ev_charge_options__connector_aggregation {
    hidden: yes
    sql: ${TABLE}.ev_charge_options.connector_aggregation ;;
    group_label: "Ev Charge Options"
    group_item_label: "Connector Aggregation"
  }

  dimension: ev_charge_options__connector_count {
    type: number
    description: "Number of connectors at this station. However, because some ports can have multiple connectors but only be able to charge one car at a time (e.g.) the number of connectors may be greater than the total number of cars which can charge simultaneously."
    sql: ${TABLE}.ev_charge_options.connector_count ;;
    group_label: "Ev Charge Options"
    group_item_label: "Connector Count"
  }

  dimension: free_garage_parking {
    type: yesno
    description: "Place offers free garage parking."
    sql: ${TABLE}.free_garage_parking ;;
  }

  dimension: free_parking_lot {
    type: yesno
    description: "Place offers free parking lots."
    sql: ${TABLE}.free_parking_lot ;;
  }

  dimension: free_street_parking {
    type: yesno
    description: "Place offers free street parking."
    sql: ${TABLE}.free_street_parking ;;
  }

  dimension: good_for_children {
    type: yesno
    description: "Place is good for children."
    sql: ${TABLE}.good_for_children ;;
  }

  dimension: good_for_groups {
    type: yesno
    description: "Place accommodates groups."
    sql: ${TABLE}.good_for_groups ;;
  }

  dimension: good_for_watching_sports {
    type: yesno
    description: "Place is suitable for watching sports."
    sql: ${TABLE}.good_for_watching_sports ;;
  }

  dimension: id {
    type: string
    description: "The unique place id. See https://developers.google.com/maps/documentation/places/web-service/place-id."
    sql: ${TABLE}.id ;;
  }

  dimension: live_music {
    type: yesno
    description: "Place provides live music."
    sql: ${TABLE}.live_music ;;
  }

  dimension: locality_ids {
    hidden: yes
    sql: ${TABLE}.locality_ids ;;
  }

  dimension: locality_names {
    hidden: yes
    sql: ${TABLE}.locality_names ;;
  }

  dimension: location__latitude {
    type: number
    description: "The latitude in degrees. Ranges from -90.0 to 90.0."
    sql: ${TABLE}.location.latitude ;;
    group_label: "Location"
    group_item_label: "Latitude"
  }

  dimension: location__longitude {
    type: number
    description: "The longitude in degrees. Ranges from -180.0 to 180.0."
    sql: ${TABLE}.location.longitude ;;
    group_label: "Location"
    group_item_label: "Longitude"
  }

  dimension: menu_for_children {
    type: yesno
    description: "Place has a children's menu."
    sql: ${TABLE}.menu_for_children ;;
  }

  dimension: neighborhood_ids {
    hidden: yes
    sql: ${TABLE}.neighborhood_ids ;;
  }

  dimension: neighborhood_names {
    hidden: yes
    sql: ${TABLE}.neighborhood_names ;;
  }

  dimension: outdoor_seating {
    type: yesno
    description: "Place provides outdoor seating."
    sql: ${TABLE}.outdoor_seating ;;
  }

  dimension: paid_garage_parking {
    type: yesno
    description: "Place offers paid garage parking."
    sql: ${TABLE}.paid_garage_parking ;;
  }

  dimension: paid_parking_lot {
    type: yesno
    description: "Place offers paid parking lots."
    sql: ${TABLE}.paid_parking_lot ;;
  }

  dimension: paid_street_parking {
    type: yesno
    description: "Place offers paid street parking."
    sql: ${TABLE}.paid_street_parking ;;
  }

  dimension: point {
    type: string
    description: "The location of the place as a Point geography type object."
    sql: ${TABLE}.point ;;
  }

  dimension: postal_code_ids {
    hidden: yes
    sql: ${TABLE}.postal_code_ids ;;
  }

  dimension: postal_code_names {
    hidden: yes
    sql: ${TABLE}.postal_code_names ;;
  }

  dimension: price_level {
    type: string
    description: "Price level of the place. Possible values are \"PRICE_LEVEL_FREE\", \"PRICE_LEVEL_INEXPENSIVE\", \"PRICE_LEVEL_MODERATE\", \"PRICE_LEVEL_EXPENSIVE\", and \"PRICE_LEVEL_VERY_EXPENSIVE\"."
    sql: ${TABLE}.price_level ;;
  }

  dimension: primary_type {
    type: string
    description: "The primary type of the place. For example, \"restaurant\", \"cafe\", \"airport\", etc. A place can only have a single primary type. For the complete list of possible values, see https://developers.google.com/maps/documentation/placesinsights/place-types."
    sql: ${TABLE}.primary_type ;;
  }

  dimension: rating {
    type: number
    description: "A rating between 1.0 and 5.0, based on user reviews of the place."
    sql: ${TABLE}.rating ;;
  }

  dimension: regular_opening_hours__friday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours.friday ;;
    group_label: "Regular Opening Hours"
    group_item_label: "Friday"
  }

  dimension: regular_opening_hours__monday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours.monday ;;
    group_label: "Regular Opening Hours"
    group_item_label: "Monday"
  }

  dimension: regular_opening_hours__saturday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours.saturday ;;
    group_label: "Regular Opening Hours"
    group_item_label: "Saturday"
  }

  dimension: regular_opening_hours__sunday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours.sunday ;;
    group_label: "Regular Opening Hours"
    group_item_label: "Sunday"
  }

  dimension: regular_opening_hours__thursday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours.thursday ;;
    group_label: "Regular Opening Hours"
    group_item_label: "Thursday"
  }

  dimension: regular_opening_hours__tuesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours.tuesday ;;
    group_label: "Regular Opening Hours"
    group_item_label: "Tuesday"
  }

  dimension: regular_opening_hours__wednesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours.wednesday ;;
    group_label: "Regular Opening Hours"
    group_item_label: "Wednesday"
  }

  dimension: regular_opening_hours_access__friday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_access.friday ;;
    group_label: "Regular Opening Hours Access"
    group_item_label: "Friday"
  }

  dimension: regular_opening_hours_access__monday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_access.monday ;;
    group_label: "Regular Opening Hours Access"
    group_item_label: "Monday"
  }

  dimension: regular_opening_hours_access__saturday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_access.saturday ;;
    group_label: "Regular Opening Hours Access"
    group_item_label: "Saturday"
  }

  dimension: regular_opening_hours_access__sunday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_access.sunday ;;
    group_label: "Regular Opening Hours Access"
    group_item_label: "Sunday"
  }

  dimension: regular_opening_hours_access__thursday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_access.thursday ;;
    group_label: "Regular Opening Hours Access"
    group_item_label: "Thursday"
  }

  dimension: regular_opening_hours_access__tuesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_access.tuesday ;;
    group_label: "Regular Opening Hours Access"
    group_item_label: "Tuesday"
  }

  dimension: regular_opening_hours_access__wednesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_access.wednesday ;;
    group_label: "Regular Opening Hours Access"
    group_item_label: "Wednesday"
  }

  dimension: regular_opening_hours_breakfast__friday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_breakfast.friday ;;
    group_label: "Regular Opening Hours Breakfast"
    group_item_label: "Friday"
  }

  dimension: regular_opening_hours_breakfast__monday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_breakfast.monday ;;
    group_label: "Regular Opening Hours Breakfast"
    group_item_label: "Monday"
  }

  dimension: regular_opening_hours_breakfast__saturday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_breakfast.saturday ;;
    group_label: "Regular Opening Hours Breakfast"
    group_item_label: "Saturday"
  }

  dimension: regular_opening_hours_breakfast__sunday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_breakfast.sunday ;;
    group_label: "Regular Opening Hours Breakfast"
    group_item_label: "Sunday"
  }

  dimension: regular_opening_hours_breakfast__thursday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_breakfast.thursday ;;
    group_label: "Regular Opening Hours Breakfast"
    group_item_label: "Thursday"
  }

  dimension: regular_opening_hours_breakfast__tuesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_breakfast.tuesday ;;
    group_label: "Regular Opening Hours Breakfast"
    group_item_label: "Tuesday"
  }

  dimension: regular_opening_hours_breakfast__wednesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_breakfast.wednesday ;;
    group_label: "Regular Opening Hours Breakfast"
    group_item_label: "Wednesday"
  }

  dimension: regular_opening_hours_brunch__friday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_brunch.friday ;;
    group_label: "Regular Opening Hours Brunch"
    group_item_label: "Friday"
  }

  dimension: regular_opening_hours_brunch__monday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_brunch.monday ;;
    group_label: "Regular Opening Hours Brunch"
    group_item_label: "Monday"
  }

  dimension: regular_opening_hours_brunch__saturday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_brunch.saturday ;;
    group_label: "Regular Opening Hours Brunch"
    group_item_label: "Saturday"
  }

  dimension: regular_opening_hours_brunch__sunday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_brunch.sunday ;;
    group_label: "Regular Opening Hours Brunch"
    group_item_label: "Sunday"
  }

  dimension: regular_opening_hours_brunch__thursday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_brunch.thursday ;;
    group_label: "Regular Opening Hours Brunch"
    group_item_label: "Thursday"
  }

  dimension: regular_opening_hours_brunch__tuesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_brunch.tuesday ;;
    group_label: "Regular Opening Hours Brunch"
    group_item_label: "Tuesday"
  }

  dimension: regular_opening_hours_brunch__wednesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_brunch.wednesday ;;
    group_label: "Regular Opening Hours Brunch"
    group_item_label: "Wednesday"
  }

  dimension: regular_opening_hours_delivery__friday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_delivery.friday ;;
    group_label: "Regular Opening Hours Delivery"
    group_item_label: "Friday"
  }

  dimension: regular_opening_hours_delivery__monday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_delivery.monday ;;
    group_label: "Regular Opening Hours Delivery"
    group_item_label: "Monday"
  }

  dimension: regular_opening_hours_delivery__saturday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_delivery.saturday ;;
    group_label: "Regular Opening Hours Delivery"
    group_item_label: "Saturday"
  }

  dimension: regular_opening_hours_delivery__sunday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_delivery.sunday ;;
    group_label: "Regular Opening Hours Delivery"
    group_item_label: "Sunday"
  }

  dimension: regular_opening_hours_delivery__thursday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_delivery.thursday ;;
    group_label: "Regular Opening Hours Delivery"
    group_item_label: "Thursday"
  }

  dimension: regular_opening_hours_delivery__tuesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_delivery.tuesday ;;
    group_label: "Regular Opening Hours Delivery"
    group_item_label: "Tuesday"
  }

  dimension: regular_opening_hours_delivery__wednesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_delivery.wednesday ;;
    group_label: "Regular Opening Hours Delivery"
    group_item_label: "Wednesday"
  }

  dimension: regular_opening_hours_dinner__friday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_dinner.friday ;;
    group_label: "Regular Opening Hours Dinner"
    group_item_label: "Friday"
  }

  dimension: regular_opening_hours_dinner__monday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_dinner.monday ;;
    group_label: "Regular Opening Hours Dinner"
    group_item_label: "Monday"
  }

  dimension: regular_opening_hours_dinner__saturday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_dinner.saturday ;;
    group_label: "Regular Opening Hours Dinner"
    group_item_label: "Saturday"
  }

  dimension: regular_opening_hours_dinner__sunday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_dinner.sunday ;;
    group_label: "Regular Opening Hours Dinner"
    group_item_label: "Sunday"
  }

  dimension: regular_opening_hours_dinner__thursday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_dinner.thursday ;;
    group_label: "Regular Opening Hours Dinner"
    group_item_label: "Thursday"
  }

  dimension: regular_opening_hours_dinner__tuesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_dinner.tuesday ;;
    group_label: "Regular Opening Hours Dinner"
    group_item_label: "Tuesday"
  }

  dimension: regular_opening_hours_dinner__wednesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_dinner.wednesday ;;
    group_label: "Regular Opening Hours Dinner"
    group_item_label: "Wednesday"
  }

  dimension: regular_opening_hours_drive_through__friday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_drive_through.friday ;;
    group_label: "Regular Opening Hours Drive Through"
    group_item_label: "Friday"
  }

  dimension: regular_opening_hours_drive_through__monday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_drive_through.monday ;;
    group_label: "Regular Opening Hours Drive Through"
    group_item_label: "Monday"
  }

  dimension: regular_opening_hours_drive_through__saturday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_drive_through.saturday ;;
    group_label: "Regular Opening Hours Drive Through"
    group_item_label: "Saturday"
  }

  dimension: regular_opening_hours_drive_through__sunday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_drive_through.sunday ;;
    group_label: "Regular Opening Hours Drive Through"
    group_item_label: "Sunday"
  }

  dimension: regular_opening_hours_drive_through__thursday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_drive_through.thursday ;;
    group_label: "Regular Opening Hours Drive Through"
    group_item_label: "Thursday"
  }

  dimension: regular_opening_hours_drive_through__tuesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_drive_through.tuesday ;;
    group_label: "Regular Opening Hours Drive Through"
    group_item_label: "Tuesday"
  }

  dimension: regular_opening_hours_drive_through__wednesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_drive_through.wednesday ;;
    group_label: "Regular Opening Hours Drive Through"
    group_item_label: "Wednesday"
  }

  dimension: regular_opening_hours_happy_hour__friday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_happy_hour.friday ;;
    group_label: "Regular Opening Hours Happy Hour"
    group_item_label: "Friday"
  }

  dimension: regular_opening_hours_happy_hour__monday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_happy_hour.monday ;;
    group_label: "Regular Opening Hours Happy Hour"
    group_item_label: "Monday"
  }

  dimension: regular_opening_hours_happy_hour__saturday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_happy_hour.saturday ;;
    group_label: "Regular Opening Hours Happy Hour"
    group_item_label: "Saturday"
  }

  dimension: regular_opening_hours_happy_hour__sunday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_happy_hour.sunday ;;
    group_label: "Regular Opening Hours Happy Hour"
    group_item_label: "Sunday"
  }

  dimension: regular_opening_hours_happy_hour__thursday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_happy_hour.thursday ;;
    group_label: "Regular Opening Hours Happy Hour"
    group_item_label: "Thursday"
  }

  dimension: regular_opening_hours_happy_hour__tuesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_happy_hour.tuesday ;;
    group_label: "Regular Opening Hours Happy Hour"
    group_item_label: "Tuesday"
  }

  dimension: regular_opening_hours_happy_hour__wednesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_happy_hour.wednesday ;;
    group_label: "Regular Opening Hours Happy Hour"
    group_item_label: "Wednesday"
  }

  dimension: regular_opening_hours_kitchen__friday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_kitchen.friday ;;
    group_label: "Regular Opening Hours Kitchen"
    group_item_label: "Friday"
  }

  dimension: regular_opening_hours_kitchen__monday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_kitchen.monday ;;
    group_label: "Regular Opening Hours Kitchen"
    group_item_label: "Monday"
  }

  dimension: regular_opening_hours_kitchen__saturday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_kitchen.saturday ;;
    group_label: "Regular Opening Hours Kitchen"
    group_item_label: "Saturday"
  }

  dimension: regular_opening_hours_kitchen__sunday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_kitchen.sunday ;;
    group_label: "Regular Opening Hours Kitchen"
    group_item_label: "Sunday"
  }

  dimension: regular_opening_hours_kitchen__thursday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_kitchen.thursday ;;
    group_label: "Regular Opening Hours Kitchen"
    group_item_label: "Thursday"
  }

  dimension: regular_opening_hours_kitchen__tuesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_kitchen.tuesday ;;
    group_label: "Regular Opening Hours Kitchen"
    group_item_label: "Tuesday"
  }

  dimension: regular_opening_hours_kitchen__wednesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_kitchen.wednesday ;;
    group_label: "Regular Opening Hours Kitchen"
    group_item_label: "Wednesday"
  }

  dimension: regular_opening_hours_lunch__friday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_lunch.friday ;;
    group_label: "Regular Opening Hours Lunch"
    group_item_label: "Friday"
  }

  dimension: regular_opening_hours_lunch__monday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_lunch.monday ;;
    group_label: "Regular Opening Hours Lunch"
    group_item_label: "Monday"
  }

  dimension: regular_opening_hours_lunch__saturday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_lunch.saturday ;;
    group_label: "Regular Opening Hours Lunch"
    group_item_label: "Saturday"
  }

  dimension: regular_opening_hours_lunch__sunday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_lunch.sunday ;;
    group_label: "Regular Opening Hours Lunch"
    group_item_label: "Sunday"
  }

  dimension: regular_opening_hours_lunch__thursday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_lunch.thursday ;;
    group_label: "Regular Opening Hours Lunch"
    group_item_label: "Thursday"
  }

  dimension: regular_opening_hours_lunch__tuesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_lunch.tuesday ;;
    group_label: "Regular Opening Hours Lunch"
    group_item_label: "Tuesday"
  }

  dimension: regular_opening_hours_lunch__wednesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_lunch.wednesday ;;
    group_label: "Regular Opening Hours Lunch"
    group_item_label: "Wednesday"
  }

  dimension: regular_opening_hours_online_service_hours__friday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_online_service_hours.friday ;;
    group_label: "Regular Opening Hours Online Service Hours"
    group_item_label: "Friday"
  }

  dimension: regular_opening_hours_online_service_hours__monday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_online_service_hours.monday ;;
    group_label: "Regular Opening Hours Online Service Hours"
    group_item_label: "Monday"
  }

  dimension: regular_opening_hours_online_service_hours__saturday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_online_service_hours.saturday ;;
    group_label: "Regular Opening Hours Online Service Hours"
    group_item_label: "Saturday"
  }

  dimension: regular_opening_hours_online_service_hours__sunday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_online_service_hours.sunday ;;
    group_label: "Regular Opening Hours Online Service Hours"
    group_item_label: "Sunday"
  }

  dimension: regular_opening_hours_online_service_hours__thursday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_online_service_hours.thursday ;;
    group_label: "Regular Opening Hours Online Service Hours"
    group_item_label: "Thursday"
  }

  dimension: regular_opening_hours_online_service_hours__tuesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_online_service_hours.tuesday ;;
    group_label: "Regular Opening Hours Online Service Hours"
    group_item_label: "Tuesday"
  }

  dimension: regular_opening_hours_online_service_hours__wednesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_online_service_hours.wednesday ;;
    group_label: "Regular Opening Hours Online Service Hours"
    group_item_label: "Wednesday"
  }

  dimension: regular_opening_hours_pickup__friday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_pickup.friday ;;
    group_label: "Regular Opening Hours Pickup"
    group_item_label: "Friday"
  }

  dimension: regular_opening_hours_pickup__monday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_pickup.monday ;;
    group_label: "Regular Opening Hours Pickup"
    group_item_label: "Monday"
  }

  dimension: regular_opening_hours_pickup__saturday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_pickup.saturday ;;
    group_label: "Regular Opening Hours Pickup"
    group_item_label: "Saturday"
  }

  dimension: regular_opening_hours_pickup__sunday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_pickup.sunday ;;
    group_label: "Regular Opening Hours Pickup"
    group_item_label: "Sunday"
  }

  dimension: regular_opening_hours_pickup__thursday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_pickup.thursday ;;
    group_label: "Regular Opening Hours Pickup"
    group_item_label: "Thursday"
  }

  dimension: regular_opening_hours_pickup__tuesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_pickup.tuesday ;;
    group_label: "Regular Opening Hours Pickup"
    group_item_label: "Tuesday"
  }

  dimension: regular_opening_hours_pickup__wednesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_pickup.wednesday ;;
    group_label: "Regular Opening Hours Pickup"
    group_item_label: "Wednesday"
  }

  dimension: regular_opening_hours_senior_hours__friday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_senior_hours.friday ;;
    group_label: "Regular Opening Hours Senior Hours"
    group_item_label: "Friday"
  }

  dimension: regular_opening_hours_senior_hours__monday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_senior_hours.monday ;;
    group_label: "Regular Opening Hours Senior Hours"
    group_item_label: "Monday"
  }

  dimension: regular_opening_hours_senior_hours__saturday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_senior_hours.saturday ;;
    group_label: "Regular Opening Hours Senior Hours"
    group_item_label: "Saturday"
  }

  dimension: regular_opening_hours_senior_hours__sunday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_senior_hours.sunday ;;
    group_label: "Regular Opening Hours Senior Hours"
    group_item_label: "Sunday"
  }

  dimension: regular_opening_hours_senior_hours__thursday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_senior_hours.thursday ;;
    group_label: "Regular Opening Hours Senior Hours"
    group_item_label: "Thursday"
  }

  dimension: regular_opening_hours_senior_hours__tuesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_senior_hours.tuesday ;;
    group_label: "Regular Opening Hours Senior Hours"
    group_item_label: "Tuesday"
  }

  dimension: regular_opening_hours_senior_hours__wednesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_senior_hours.wednesday ;;
    group_label: "Regular Opening Hours Senior Hours"
    group_item_label: "Wednesday"
  }

  dimension: regular_opening_hours_takeout__friday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_takeout.friday ;;
    group_label: "Regular Opening Hours Takeout"
    group_item_label: "Friday"
  }

  dimension: regular_opening_hours_takeout__monday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_takeout.monday ;;
    group_label: "Regular Opening Hours Takeout"
    group_item_label: "Monday"
  }

  dimension: regular_opening_hours_takeout__saturday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_takeout.saturday ;;
    group_label: "Regular Opening Hours Takeout"
    group_item_label: "Saturday"
  }

  dimension: regular_opening_hours_takeout__sunday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_takeout.sunday ;;
    group_label: "Regular Opening Hours Takeout"
    group_item_label: "Sunday"
  }

  dimension: regular_opening_hours_takeout__thursday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_takeout.thursday ;;
    group_label: "Regular Opening Hours Takeout"
    group_item_label: "Thursday"
  }

  dimension: regular_opening_hours_takeout__tuesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_takeout.tuesday ;;
    group_label: "Regular Opening Hours Takeout"
    group_item_label: "Tuesday"
  }

  dimension: regular_opening_hours_takeout__wednesday {
    hidden: yes
    sql: ${TABLE}.regular_opening_hours_takeout.wednesday ;;
    group_label: "Regular Opening Hours Takeout"
    group_item_label: "Wednesday"
  }

  dimension: reservable {
    type: yesno
    description: "Place supports reservations."
    sql: ${TABLE}.reservable ;;
  }

  dimension: restroom {
    type: yesno
    description: "Place has a restroom."
    sql: ${TABLE}.restroom ;;
  }

  dimension: serves_beer {
    type: yesno
    description: "Place serves beer."
    sql: ${TABLE}.serves_beer ;;
  }

  dimension: serves_breakfast {
    type: yesno
    description: "Place serves breakfast."
    sql: ${TABLE}.serves_breakfast ;;
  }

  dimension: serves_brunch {
    type: yesno
    description: "Place serves brunch."
    sql: ${TABLE}.serves_brunch ;;
  }

  dimension: serves_cocktails {
    type: yesno
    description: "Place serves cocktails."
    sql: ${TABLE}.serves_cocktails ;;
  }

  dimension: serves_coffee {
    type: yesno
    description: "Place serves coffee."
    sql: ${TABLE}.serves_coffee ;;
  }

  dimension: serves_dessert {
    type: yesno
    description: "Place serves dessert."
    sql: ${TABLE}.serves_dessert ;;
  }

  dimension: serves_dinner {
    type: yesno
    description: "Place serves dinner."
    sql: ${TABLE}.serves_dinner ;;
  }

  dimension: serves_lunch {
    type: yesno
    description: "Place serves lunch."
    sql: ${TABLE}.serves_lunch ;;
  }

  dimension: serves_vegetarian_food {
    type: yesno
    description: "Place serves vegetarian food."
    sql: ${TABLE}.serves_vegetarian_food ;;
  }

  dimension: serves_wine {
    type: yesno
    description: "Place serves wine."
    sql: ${TABLE}.serves_wine ;;
  }

  dimension: sublocality_level_1_ids {
    hidden: yes
    sql: ${TABLE}.sublocality_level_1_ids ;;
  }

  dimension: sublocality_level_1_names {
    hidden: yes
    sql: ${TABLE}.sublocality_level_1_names ;;
  }

  dimension: takeout {
    type: yesno
    description: "Place supports takeout."
    sql: ${TABLE}.takeout ;;
  }

  dimension: types {
    hidden: yes
    sql: ${TABLE}.types ;;
  }

  dimension: user_rating_count {
    type: number
    description: "The total number of reviews for the place."
    sql: ${TABLE}.user_rating_count ;;
  }

  dimension: valet_parking {
    type: yesno
    description: "Place offers valet parking."
    sql: ${TABLE}.valet_parking ;;
  }

  dimension: wheelchair_accessible_entrance {
    type: yesno
    description: "Place has a wheelchair accessible entrance."
    sql: ${TABLE}.wheelchair_accessible_entrance ;;
  }

  dimension: wheelchair_accessible_parking {
    type: yesno
    description: "Place offers wheelchair accessible parking."
    sql: ${TABLE}.wheelchair_accessible_parking ;;
  }

  dimension: wheelchair_accessible_restroom {
    type: yesno
    description: "Place has a wheelchair accessible restroom."
    sql: ${TABLE}.wheelchair_accessible_restroom ;;
  }

  dimension: wheelchair_accessible_seating {
    type: yesno
    description: "Place has wheelchair accessible seating."
    sql: ${TABLE}.wheelchair_accessible_seating ;;
  }
  measure: count {
    type: count
    drill_fields: [administrative_area_level_3_name, administrative_area_level_2_name, administrative_area_level_1_name]
  }
}

# The name of this view in Looker is "Places Sample Types"
view: places_sample__types {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Places Sample Types" in Explore.

  dimension: places_sample__types {
    type: string
    description: "A set of type tags for the place. For example, \"restaurant\" and \"cafe\". For the complete list of possible values, see https://developers.google.com/maps/documentation/placesinsights/place-types."
    sql: places_sample__types ;;
  }
}

# The name of this view in Looker is "Places Sample Locality Ids"
view: places_sample__locality_ids {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Places Sample Locality Ids" in Explore.

  dimension: places_sample__locality_ids {
    type: string
    description: "The place ids of localities containing the place. See https://developers.google.com/maps/documentation/places/web-service/place-id."
    sql: places_sample__locality_ids ;;
  }
}

# The name of this view in Looker is "Places Sample Locality Names"
view: places_sample__locality_names {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Places Sample Locality Names" in Explore.

  dimension: places_sample__locality_names {
    type: string
    description: "The names of localities containing the place."
    sql: places_sample__locality_names ;;
  }
}

# The name of this view in Looker is "Places Sample Postal Code Ids"
view: places_sample__postal_code_ids {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Places Sample Postal Code Ids" in Explore.

  dimension: places_sample__postal_code_ids {
    type: string
    description: "The place ids of postal codes containing the place. See https://developers.google.com/maps/documentation/places/web-service/place-id."
    sql: places_sample__postal_code_ids ;;
  }
}

# The name of this view in Looker is "Places Sample Neighborhood Ids"
view: places_sample__neighborhood_ids {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Places Sample Neighborhood Ids" in Explore.

  dimension: places_sample__neighborhood_ids {
    type: string
    description: "The place ids of neighborhoods containing the place. See https://developers.google.com/maps/documentation/places/web-service/place-id."
    sql: places_sample__neighborhood_ids ;;
  }
}

# The name of this view in Looker is "Places Sample Postal Code Names"
view: places_sample__postal_code_names {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Places Sample Postal Code Names" in Explore.

  dimension: places_sample__postal_code_names {
    type: string
    description: "The names of postal codes containing the place."
    sql: places_sample__postal_code_names ;;
  }
}

# The name of this view in Looker is "Places Sample Neighborhood Names"
view: places_sample__neighborhood_names {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Places Sample Neighborhood Names" in Explore.

  dimension: places_sample__neighborhood_names {
    type: string
    description: "The names of neighborhoods containing the place."
    sql: places_sample__neighborhood_names ;;
  }
}

# The name of this view in Looker is "Places Sample Sublocality Level 1 Ids"
view: places_sample__sublocality_level_1_ids {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Places Sample Sublocality Level 1 Ids" in Explore.

  dimension: places_sample__sublocality_level_1_ids {
    type: string
    description: "The place ids of sublocalities containing the place. See https://developers.google.com/maps/documentation/places/web-service/place-id."
    sql: places_sample__sublocality_level_1_ids ;;
  }
}

# The name of this view in Looker is "Places Sample Sublocality Level 1 Names"
view: places_sample__sublocality_level_1_names {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Places Sample Sublocality Level 1 Names" in Explore.

  dimension: places_sample__sublocality_level_1_names {
    type: string
    description: "The names of sublocalities containing the place."
    sql: places_sample__sublocality_level_1_names ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Sunday"
view: places_sample__regular_opening_hours__sunday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Friday"
view: places_sample__regular_opening_hours__friday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Monday"
view: places_sample__regular_opening_hours__monday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Tuesday"
view: places_sample__regular_opening_hours__tuesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Saturday"
view: places_sample__regular_opening_hours__saturday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Thursday"
view: places_sample__regular_opening_hours__thursday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Wednesday"
view: places_sample__regular_opening_hours__wednesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Lunch Sunday"
view: places_sample__regular_opening_hours_lunch__sunday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Lunch Friday"
view: places_sample__regular_opening_hours_lunch__friday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Lunch Monday"
view: places_sample__regular_opening_hours_lunch__monday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Ev Charge Options Connector Aggregation"
view: places_sample__ev_charge_options__connector_aggregation {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Count Places Sample Ev Charge Options Connector Aggregation" in Explore.

  dimension: count_places_sample__ev_charge_options__connector_aggregation {
    type: number
    description: "Number of connectors in this aggregation."
    sql: ${TABLE}.count ;;
  }

  dimension: max_charge_rate_kw {
    type: number
    description: "The static max charging rate in kw of each connector in the aggregation."
    sql: ${TABLE}.max_charge_rate_kw ;;
  }

  dimension: type {
    type: string
    description: "The connector type of this aggregation."
    sql: ${TABLE}.type ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Brunch Sunday"
view: places_sample__regular_opening_hours_brunch__sunday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Brunch Friday"
view: places_sample__regular_opening_hours_brunch__friday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Brunch Monday"
view: places_sample__regular_opening_hours_brunch__monday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Dinner Sunday"
view: places_sample__regular_opening_hours_dinner__sunday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Dinner Friday"
view: places_sample__regular_opening_hours_dinner__friday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Dinner Monday"
view: places_sample__regular_opening_hours_dinner__monday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Lunch Tuesday"
view: places_sample__regular_opening_hours_lunch__tuesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Pickup Sunday"
view: places_sample__regular_opening_hours_pickup__sunday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Pickup Friday"
view: places_sample__regular_opening_hours_pickup__friday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Pickup Monday"
view: places_sample__regular_opening_hours_pickup__monday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Access Sunday"
view: places_sample__regular_opening_hours_access__sunday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Access Friday"
view: places_sample__regular_opening_hours_access__friday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Access Monday"
view: places_sample__regular_opening_hours_access__monday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Kitchen Sunday"
view: places_sample__regular_opening_hours_kitchen__sunday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Kitchen Friday"
view: places_sample__regular_opening_hours_kitchen__friday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Kitchen Monday"
view: places_sample__regular_opening_hours_kitchen__monday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Brunch Tuesday"
view: places_sample__regular_opening_hours_brunch__tuesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Dinner Tuesday"
view: places_sample__regular_opening_hours_dinner__tuesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Lunch Saturday"
view: places_sample__regular_opening_hours_lunch__saturday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Lunch Thursday"
view: places_sample__regular_opening_hours_lunch__thursday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Pickup Tuesday"
view: places_sample__regular_opening_hours_pickup__tuesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Access Tuesday"
view: places_sample__regular_opening_hours_access__tuesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Takeout Sunday"
view: places_sample__regular_opening_hours_takeout__sunday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Takeout Friday"
view: places_sample__regular_opening_hours_takeout__friday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Takeout Monday"
view: places_sample__regular_opening_hours_takeout__monday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Kitchen Tuesday"
view: places_sample__regular_opening_hours_kitchen__tuesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Delivery Sunday"
view: places_sample__regular_opening_hours_delivery__sunday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Delivery Friday"
view: places_sample__regular_opening_hours_delivery__friday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Delivery Monday"
view: places_sample__regular_opening_hours_delivery__monday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Brunch Saturday"
view: places_sample__regular_opening_hours_brunch__saturday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Brunch Thursday"
view: places_sample__regular_opening_hours_brunch__thursday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Dinner Saturday"
view: places_sample__regular_opening_hours_dinner__saturday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Dinner Thursday"
view: places_sample__regular_opening_hours_dinner__thursday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Lunch Wednesday"
view: places_sample__regular_opening_hours_lunch__wednesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Pickup Saturday"
view: places_sample__regular_opening_hours_pickup__saturday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Pickup Thursday"
view: places_sample__regular_opening_hours_pickup__thursday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Access Saturday"
view: places_sample__regular_opening_hours_access__saturday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Access Thursday"
view: places_sample__regular_opening_hours_access__thursday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Takeout Tuesday"
view: places_sample__regular_opening_hours_takeout__tuesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Kitchen Saturday"
view: places_sample__regular_opening_hours_kitchen__saturday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Kitchen Thursday"
view: places_sample__regular_opening_hours_kitchen__thursday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Delivery Tuesday"
view: places_sample__regular_opening_hours_delivery__tuesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Breakfast Sunday"
view: places_sample__regular_opening_hours_breakfast__sunday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Breakfast Friday"
view: places_sample__regular_opening_hours_breakfast__friday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Breakfast Monday"
view: places_sample__regular_opening_hours_breakfast__monday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Brunch Wednesday"
view: places_sample__regular_opening_hours_brunch__wednesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Dinner Wednesday"
view: places_sample__regular_opening_hours_dinner__wednesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Pickup Wednesday"
view: places_sample__regular_opening_hours_pickup__wednesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Access Wednesday"
view: places_sample__regular_opening_hours_access__wednesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Takeout Saturday"
view: places_sample__regular_opening_hours_takeout__saturday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Takeout Thursday"
view: places_sample__regular_opening_hours_takeout__thursday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Kitchen Wednesday"
view: places_sample__regular_opening_hours_kitchen__wednesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Delivery Saturday"
view: places_sample__regular_opening_hours_delivery__saturday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Delivery Thursday"
view: places_sample__regular_opening_hours_delivery__thursday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Breakfast Tuesday"
view: places_sample__regular_opening_hours_breakfast__tuesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Happy Hour Sunday"
view: places_sample__regular_opening_hours_happy_hour__sunday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Happy Hour Friday"
view: places_sample__regular_opening_hours_happy_hour__friday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Happy Hour Monday"
view: places_sample__regular_opening_hours_happy_hour__monday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Takeout Wednesday"
view: places_sample__regular_opening_hours_takeout__wednesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Delivery Wednesday"
view: places_sample__regular_opening_hours_delivery__wednesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Breakfast Saturday"
view: places_sample__regular_opening_hours_breakfast__saturday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Breakfast Thursday"
view: places_sample__regular_opening_hours_breakfast__thursday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Happy Hour Tuesday"
view: places_sample__regular_opening_hours_happy_hour__tuesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Breakfast Wednesday"
view: places_sample__regular_opening_hours_breakfast__wednesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Happy Hour Saturday"
view: places_sample__regular_opening_hours_happy_hour__saturday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Happy Hour Thursday"
view: places_sample__regular_opening_hours_happy_hour__thursday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Senior Hours Sunday"
view: places_sample__regular_opening_hours_senior_hours__sunday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Senior Hours Friday"
view: places_sample__regular_opening_hours_senior_hours__friday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Senior Hours Monday"
view: places_sample__regular_opening_hours_senior_hours__monday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Happy Hour Wednesday"
view: places_sample__regular_opening_hours_happy_hour__wednesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Senior Hours Tuesday"
view: places_sample__regular_opening_hours_senior_hours__tuesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Drive Through Sunday"
view: places_sample__regular_opening_hours_drive_through__sunday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Drive Through Friday"
view: places_sample__regular_opening_hours_drive_through__friday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Drive Through Monday"
view: places_sample__regular_opening_hours_drive_through__monday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Senior Hours Saturday"
view: places_sample__regular_opening_hours_senior_hours__saturday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Senior Hours Thursday"
view: places_sample__regular_opening_hours_senior_hours__thursday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Drive Through Tuesday"
view: places_sample__regular_opening_hours_drive_through__tuesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Senior Hours Wednesday"
view: places_sample__regular_opening_hours_senior_hours__wednesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Drive Through Saturday"
view: places_sample__regular_opening_hours_drive_through__saturday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Drive Through Thursday"
view: places_sample__regular_opening_hours_drive_through__thursday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Drive Through Wednesday"
view: places_sample__regular_opening_hours_drive_through__wednesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Online Service Hours Sunday"
view: places_sample__regular_opening_hours_online_service_hours__sunday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Online Service Hours Friday"
view: places_sample__regular_opening_hours_online_service_hours__friday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Online Service Hours Monday"
view: places_sample__regular_opening_hours_online_service_hours__monday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Online Service Hours Tuesday"
view: places_sample__regular_opening_hours_online_service_hours__tuesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Online Service Hours Saturday"
view: places_sample__regular_opening_hours_online_service_hours__saturday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Online Service Hours Thursday"
view: places_sample__regular_opening_hours_online_service_hours__thursday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}

# The name of this view in Looker is "Places Sample Regular Opening Hours Online Service Hours Wednesday"
view: places_sample__regular_opening_hours_online_service_hours__wednesday {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "End Time" in Explore.

  dimension: end_time {
    type: string
    description: "End of the period."
    sql: ${TABLE}.end_time ;;
  }

  dimension: start_time {
    type: string
    description: "Start of the period."
    sql: ${TABLE}.start_time ;;
  }
}
