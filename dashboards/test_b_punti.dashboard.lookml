---
- dashboard: test_b_punti
  title: TEST_B Places con punti
  preferred_viewer: dashboards-next
  description: ''
  layout: newspaper
  tabs:
  - name: ''
    label: ''
  elements:
  - title: Numero cc
    name: Numero cc
    model: Places
    explore: roma_macro_analysis
    type: single_value
    fields: [roma_macro_analysis.competitor_count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    row: 0
    col: 18
    width: 6
    height: 2
    tab_name: ''
  - title: Numero competitor
    name: Numero competitor
    model: Places
    explore: roma_macro_analysis
    type: single_value
    fields: [roma_macro_analysis.competitor_count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    row: 0
    col: 12
    width: 6
    height: 2
    tab_name: ''
  - title: Scontrino medio
    name: Scontrino medio
    model: Places
    explore: roma_macro_analysis
    type: single_value
    fields: [roma_macro_analysis.average_order_value]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    row: 0
    col: 6
    width: 6
    height: 2
    tab_name: ''
  - title: Fatturato
    name: Fatturato
    model: Places
    explore: roma_macro_analysis
    type: single_value
    fields: [roma_macro_analysis.total_online_revenue]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 0
    col: 0
    width: 6
    height: 2
    tab_name: ''
  - title: ''
    name: ''
    model: Places
    explore: roma_macro_analysis
    type: looker_scatter
    fields: [roma_macro_analysis.quartiere, roma_macro_analysis.competitor_count, roma_macro_analysis.total_online_revenue, roma_macro_analysis.traffic_score]
    sorts: [roma_macro_analysis.quartiere, roma_macro_analysis.competitor_count desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    size_by_field: roma_macro_analysis.traffic_score
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: roma_macro_analysis.total_online_revenue
    custom_y_column: roma_macro_analysis.traffic_score
    custom_value_label_column: ''
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    row: 10
    col: 0
    width: 24
    height: 6
    tab_name: ''
  - title: ''
    name: " (2)"
    model: Places
    explore: roma_macro_analysis
    type: looker_grid
    fields: [roma_macro_analysis.quartiere, roma_macro_analysis.total_online_revenue, roma_macro_analysis.competitor_count, roma_macro_analysis.traffic_score, roma_macro_analysis.area_segmentation]
    pivots: [roma_macro_analysis.area_segmentation]
    sorts: [roma_macro_analysis.area_segmentation, roma_macro_analysis.quartiere, roma_macro_analysis.competitor_count desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    size_by_field: roma_macro_analysis.traffic_score
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    hide_legend: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: roma_macro_analysis.total_online_revenue
    custom_y_column: roma_macro_analysis.competitor_count
    custom_value_label_column: ''
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    minimum_column_width: 75
    column_order: ["$$$_row_numbers_$$$", roma_macro_analysis.quartiere, "⚠️ MERCATO SATURO: Troppa Concorrenza, Basso Online_roma_macro_analysis.total_online_revenue", "⚠️ MERCATO SATURO: Troppa Concorrenza, Basso Online_roma_macro_analysis.competitor_count", "⚠️ MERCATO SATURO: Troppa Concorrenza, Basso Online_roma_macro_analysis.traffic_score", "⭐ FLAGSHIP TARGET: Alto Passaggio e Online Dominante_roma_macro_analysis.total_online_revenue", "⭐ FLAGSHIP TARGET: Alto Passaggio e Online Dominante_roma_macro_analysis.competitor_count", "⭐ FLAGSHIP TARGET: Alto Passaggio e Online Dominante_roma_macro_analysis.traffic_score", "🟢 ZONA STANDARD: Performance Bilanciate_roma_macro_analysis.total_online_revenue", "🟢 ZONA STANDARD: Performance Bilanciate_roma_macro_analysis.competitor_count", "🟢 ZONA STANDARD: Performance Bilanciate_roma_macro_analysis.traffic_score"]
    modern2026: false
    row: 16
    col: 0
    width: 24
    height: 6
    tab_name: ''
  - title: ''
    name: " (3)"
    model: Places
    explore: roma_micro_h3_analysis
    type: looker_google_map
    fields: [roma_micro_h3_analysis.hexagon_center, roma_micro_h3_analysis.density_score]
    filters:
      roma_micro_h3_analysis.h3_resolution_filter: '9'
      roma_micro_h3_analysis.category_filter: clothing^_store
    sorts: [roma_micro_h3_analysis.density_score desc 0]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    map_plot_mode: points
    elevation_scale: 1000
    hexagon_radius: 2000
    heatmap_intensity: 1
    heatmap_threshold: 0.05
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 1
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_transit_layer: false
    map_bicycling_layer: false
    map_traffic_layer: false
    map_kml_layer: false
    map_marker_type: icon
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    map_dual_axis: false
    quantize_map_value_colors: true
    reverse_map_value_colors: false
    defaults_version: 0
    listen:
      1. Tipo di Attrattore: roma_micro_h3_analysis.category_filter
      2. Precisione Esagoni H3: roma_micro_h3_analysis.h3_resolution_filter
    row: 2
    col: 0
    width: 24
    height: 8
    tab_name: ''
  filters:
  - name: 1 - Tipo di Attrattore
    title: 1 - Tipo di Attrattore
    type: field_filter
    default_value: clothing^_store
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: Places
    explore: roma_micro_h3_analysis
    listens_to_filters: []
    field: roma_micro_h3_analysis.category_filter
  - name: 2 - Precisione Esagoni H3
    title: 2 - Precisione Esagoni H3
    type: field_filter
    default_value: '9'
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: Places
    explore: roma_micro_h3_analysis
    listens_to_filters: []
    field: roma_micro_h3_analysis.h3_resolution_filter
