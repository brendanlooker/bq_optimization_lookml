- dashboard: slots_overview
  title: Slots Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: ceqi3zexySkeTUXs8Z6mIW
  elements:
  - title: Time Series Job Count
    name: Time Series Job Count
    # model: sam-pitcher-playground
    explore: jobs_timeline_by_project
    type: looker_area
    fields: [jobs_timeline_by_project.job_count, jobs_timeline_by_project.total_gigabytes_processed,
      jobs_timeline_by_project.total_slots, jobs_timeline_by_project.max_slots, jobs_timeline_by_project.period_start_from_parameter]
    filters: {}
    sorts: [jobs_timeline_by_project.period_start_from_parameter]
    limit: 500
    query_timezone: America/Los_Angeles
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [jobs_timeline_by_project.total_slots, jobs_timeline_by_project.max_slots,
      jobs_timeline_by_project.total_gigabytes_processed]
    series_types: {}
    listen:
      Period Start Time: jobs_timeline_by_project.period_start_time
      Region: parameters.region
      Project Name: parameters.project_name
      Timeframe: parameters.timeframe
    row: 3
    col: 0
    width: 12
    height: 8
  - name: ''
    type: text
    title_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Time Series Overview"}],"align":"center"},{"type":"p","children":[{"text":""}],"id":1679932721155},{"type":"p","children":[{"text":"Here
      we can see the total number of Jobs being run concurrently with the amount of
      bytes processed. Below, Max Slots shows for each Timeframe, the amount of slots
      that the largest job is using. Total Slots is the Total Number of the slots
      summed for the Timeframe chosen."}],"id":1679932634454}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 3
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    body_text: '[{"type":"h1","children":[{"text":"Percentile Overview"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 29
    col: 0
    width: 24
    height: 2
  - title: Time Series Summary Table
    name: Time Series Summary Table
    # model: sam-pitcher-playground
    explore: jobs_timeline_by_project
    type: looker_grid
    fields: [jobs_timeline_by_project.period_start_from_parameter, jobs_timeline_by_project.job_count,
      jobs_timeline_by_project.total_slots, jobs_timeline_by_project.max_slots, jobs_timeline_by_project.total_gigabytes_processed]
    filters: {}
    sorts: [jobs_timeline_by_project.period_start_from_parameter]
    limit: 500
    query_timezone: America/Los_Angeles
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
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Period Start Time: jobs_timeline_by_project.period_start_time
      Region: parameters.region
      Project Name: parameters.project_name
      Timeframe: parameters.timeframe
    row: 19
    col: 0
    width: 24
    height: 10
  - title: Time Series Max Slots
    name: Time Series Max Slots
    # model: sam-pitcher-playground
    explore: jobs_timeline_by_project
    type: looker_area
    fields: [jobs_timeline_by_project.job_count, jobs_timeline_by_project.total_gigabytes_processed,
      jobs_timeline_by_project.total_slots, jobs_timeline_by_project.max_slots, jobs_timeline_by_project.period_start_from_parameter]
    filters: {}
    sorts: [jobs_timeline_by_project.period_start_from_parameter]
    limit: 500
    query_timezone: America/Los_Angeles
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: jobs_timeline_by_project.total_slots,
            id: jobs_timeline_by_project.total_slots, name: Total Slots}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: jobs_timeline_by_project.max_slots,
            id: jobs_timeline_by_project.max_slots, name: Max Slots}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      jobs_timeline_by_project.max_slots: "#E8710A"
    defaults_version: 1
    hidden_fields: [jobs_timeline_by_project.job_count, jobs_timeline_by_project.total_gigabytes_processed,
      jobs_timeline_by_project.total_slots]
    listen:
      Period Start Time: jobs_timeline_by_project.period_start_time
      Region: parameters.region
      Project Name: parameters.project_name
      Timeframe: parameters.timeframe
    row: 11
    col: 0
    width: 12
    height: 8
  - title: Percentiles
    name: Percentiles
    # model: sam-pitcher-playground
    explore: quantile_statistics
    type: looker_single_record
    fields: [quantile_statistics.percentile_50, quantile_statistics.percentile_60,
      quantile_statistics.percentile_70, quantile_statistics.percentile_90, quantile_statistics.percentile_93,
      quantile_statistics.percentile_94, quantile_statistics.percentile_95, quantile_statistics.percentile_96,
      quantile_statistics.percentile_97, quantile_statistics.percentile_98, quantile_statistics.percentile_99]
    filters: {}
    sorts: [quantile_statistics.percentile_50]
    limit: 500
    query_timezone: UTC
    show_view_names: false
    defaults_version: 1
    listen:
      Period Start Time: quantile_statistics.period_start_filter
      Region: parameters.region
      Project Name: parameters.project_name
    row: 31
    col: 0
    width: 8
    height: 12
  - title: Time Series Total Slots
    name: Time Series Total Slots
    # model: sam-pitcher-playground
    explore: jobs_timeline_by_project
    type: looker_area
    fields: [jobs_timeline_by_project.job_count, jobs_timeline_by_project.total_gigabytes_processed,
      jobs_timeline_by_project.total_slots, jobs_timeline_by_project.max_slots, jobs_timeline_by_project.period_start_from_parameter]
    filters: {}
    sorts: [jobs_timeline_by_project.period_start_from_parameter]
    limit: 500
    query_timezone: America/Los_Angeles
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: jobs_timeline_by_project.total_slots,
            id: jobs_timeline_by_project.total_slots, name: Total Slots}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: jobs_timeline_by_project.max_slots,
            id: jobs_timeline_by_project.max_slots, name: Max Slots}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      jobs_timeline_by_project.max_slots: "#E8710A"
      jobs_timeline_by_project.total_slots: "#F9AB00"
    defaults_version: 1
    hidden_fields: [jobs_timeline_by_project.job_count, jobs_timeline_by_project.total_gigabytes_processed,
      jobs_timeline_by_project.max_slots]
    listen:
      Period Start Time: jobs_timeline_by_project.period_start_time
      Region: parameters.region
      Project Name: parameters.project_name
      Timeframe: parameters.timeframe
    row: 11
    col: 12
    width: 12
    height: 8
  - title: Time Series GB Processed
    name: Time Series GB Processed
    # model: sam-pitcher-playground
    explore: jobs_timeline_by_project
    type: looker_area
    fields: [jobs_timeline_by_project.job_count, jobs_timeline_by_project.total_gigabytes_processed,
      jobs_timeline_by_project.total_slots, jobs_timeline_by_project.max_slots, jobs_timeline_by_project.period_start_from_parameter]
    filters: {}
    sorts: [jobs_timeline_by_project.period_start_from_parameter]
    limit: 500
    query_timezone: America/Los_Angeles
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      jobs_timeline_by_project.total_gigabytes_processed: "#7CB342"
    defaults_version: 1
    hidden_fields: [jobs_timeline_by_project.total_slots, jobs_timeline_by_project.max_slots,
      jobs_timeline_by_project.job_count]
    listen:
      Period Start Time: jobs_timeline_by_project.period_start_time
      Region: parameters.region
      Project Name: parameters.project_name
      Timeframe: parameters.timeframe
    row: 3
    col: 12
    width: 12
    height: 8
  - title: Percentiles by Timeframe
    name: Percentiles by Timeframe
    # model: sam-pitcher-playground
    explore: quantile_statistics
    type: looker_grid
    fields: [quantile_statistics.timeframe, quantile_statistics.percentile_50, quantile_statistics.percentile_60,
      quantile_statistics.percentile_70, quantile_statistics.percentile_90, quantile_statistics.percentile_93,
      quantile_statistics.percentile_94, quantile_statistics.percentile_95, quantile_statistics.percentile_96,
      quantile_statistics.percentile_97, quantile_statistics.percentile_98, quantile_statistics.percentile_99]
    filters: {}
    sorts: [quantile_statistics.timeframe]
    limit: 500
    query_timezone: UTC
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
    defaults_version: 1
    series_types: {}
    listen:
      Period Start Time: quantile_statistics.period_start_filter
      Region: parameters.region
      Project Name: parameters.project_name
      Timeframe: parameters.timeframe
    row: 31
    col: 8
    width: 16
    height: 12
  filters:
  - name: Region
    title: Region
    type: field_filter
    default_value: us
    allow_multiple_values: true
    required: true
    ui_config:
      type: button_toggles
      display: inline
    # model: sam-pitcher-playground
    explore: jobs_timeline_by_project
    listens_to_filters: []
    field: parameters.region
  - name: Project Name
    title: Project Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
      options: []
    # model: sam-pitcher-playground
    explore: jobs_timeline_by_project
    listens_to_filters: []
    field: parameters.project_name
  - name: Period Start Time
    title: Period Start Time
    type: field_filter
    default_value: 1 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    # model: sam-pitcher-playground
    explore: jobs_timeline_by_project
    listens_to_filters: []
    field: jobs_timeline_by_project.period_start_time
  - name: Timeframe
    title: Timeframe
    type: field_filter
    default_value: hour
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    # model: sam-pitcher-playground
    explore: jobs_timeline_by_project
    listens_to_filters: []
    field: parameters.timeframe
