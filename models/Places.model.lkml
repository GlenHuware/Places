# Define the database connection to be used for this model.
connection: "places-connection"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: Places_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

explore: roma_macro_analysis {
  label: "Places Macro"
}

explore: roma_micro_h3_analysis {
  label: "Places Micro"
}

persist_with: Places_default_datagroup
