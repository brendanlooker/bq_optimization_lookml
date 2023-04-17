- dashboard: specific_query_performance_metrics
  title: Specific Query Performance Metrics
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: K6FRoyODCsxJ2x8dHhKsBa
  elements:
  - title: Looker Query Job Stages
    name: Looker Query Job Stages
    model: system__activity
    explore: query_metrics
    type: looker_column
    fields: [history.source, history.dashboard_id, query_metrics.project_init, query_metrics.model_init_computed,
      query_metrics.model_init_cache, query_metrics.explore_init, query_metrics.marshalled_cache_load,
      query_metrics.prepare, query_metrics.acquire_connection, query_metrics.connection_held,
      query_metrics.execute_main_query, query_metrics.execute_fill_min_query, query_metrics.execute_fill_max_query,
      query_metrics.execute_fill_pivot_min_query, query_metrics.execute_fill_pivot_max_query,
      query_metrics.execute_totals_query, query_metrics.execute_row_totals_query,
      query_metrics.execute_grand_totals_query, query_metrics.load_main_query_in_memory,
      query_metrics.load_fill_min_query_in_memory, query_metrics.load_fill_max_query_in_memory,
      query_metrics.load_fill_pivot_min_query_in_memory, query_metrics.load_fill_pivot_max_query_in_memory,
      query_metrics.load_totals_query_in_memory, query_metrics.load_row_totals_query_in_memory,
      query_metrics.load_grand_totals_query_in_memory, query_metrics.post_processing,
      query_metrics.pdt, query_metrics.cache_load, query_metrics.stream_to_cache,
      query_metrics.async_processing, query_metrics.queued, query_metrics.per_user_throttler,
      query_metrics.model_init_computed_average, query_metrics.model_init_cache_average,
      query_metrics.explore_init_average, query_metrics.marshalled_cache_load_average,
      query_metrics.prepare_average, query_metrics.acquire_connection_average, query_metrics.queued_average,
      query_metrics.async_processing_average, query_metrics.cache_load_average, query_metrics.execute_main_query_average,
      query_metrics.load_main_query_in_memory_average, query_metrics.load_process_and_stream_main_query_average,
      query_metrics.stream_to_cache_average, query_metrics.postprocessing_average,
      query_metrics.pdt_average, query_metrics.connection_held_sum]
    sorts: [query_metrics.model_init_computed_average desc 0]
    limit: 1
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    show_null_points: true
    interpolation: linear
    hidden_fields: [query_metrics.project_init, query_metrics.model_init_computed,
      query_metrics.model_init_cache, query_metrics.explore_init, query_metrics.marshalled_cache_load,
      query_metrics.prepare, query_metrics.acquire_connection, query_metrics.connection_held,
      query_metrics.execute_main_query, history.dashboard_id, query_metrics.execute_fill_min_query,
      query_metrics.execute_fill_max_query, query_metrics.execute_fill_pivot_min_query,
      query_metrics.execute_fill_pivot_max_query, query_metrics.execute_totals_query,
      query_metrics.execute_row_totals_query, query_metrics.execute_grand_totals_query,
      query_metrics.load_main_query_in_memory, query_metrics.load_fill_min_query_in_memory,
      query_metrics.load_fill_max_query_in_memory, query_metrics.load_fill_pivot_min_query_in_memory,
      query_metrics.load_fill_pivot_max_query_in_memory, query_metrics.load_totals_query_in_memory,
      query_metrics.load_row_totals_query_in_memory, query_metrics.load_grand_totals_query_in_memory,
      query_metrics.post_processing, query_metrics.pdt, query_metrics.cache_load,
      query_metrics.stream_to_cache, query_metrics.async_processing, query_metrics.queued,
      query_metrics.per_user_throttler]
    hidden_pivots: {}
    listen:
      Slug: history.slug
    row: 2
    col: 5
    width: 19
    height: 10
  - title: BQ Query Job Stages
    name: BQ Query Job Stages
    # model: sam-pitcher-playground
    explore: jobs_by_project
    type: looker_grid
    fields: [jobs_by_project.creation_time_date, jobs_by_project.creation_time_time,
      jobs_by_project__labels.value, jobs_by_project.job_id, jobs_by_project.job_type,
      jobs_by_project.total_slot_ms, jobs_by_project__job_stages.name, jobs_by_project__job_stages.start_ms,
      jobs_by_project__job_stages.end_ms, jobs_by_project__job_stages.wait_ms_avg,
      jobs_by_project__job_stages.write_ms_avg, jobs_by_project__job_stages.read_ms_avg,
      jobs_by_project__job_stages.records_read, jobs_by_project__job_stages.records_written,
      jobs_by_project__job_stages.shuffle_output_bytes]
    filters: {}
    sorts: [jobs_by_project__labels.value, jobs_by_project__job_stages.name]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      jobs_by_project__job_stages.wait_ms_avg:
        is_active: true
      jobs_by_project__job_stages.write_ms_avg:
        is_active: true
      jobs_by_project__job_stages.shuffle_output_bytes:
        is_active: true
      jobs_by_project__job_stages.records_written:
        is_active: true
      jobs_by_project__job_stages.records_read:
        is_active: true
      jobs_by_project__job_stages.read_ms_avg:
        is_active: true
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Slug: jobs_by_project__labels.value
      Region: parameters.region
      Project Name: parameters.project_name
    row: 27
    col: 0
    width: 24
    height: 15
  - title: Looker Queries
    name: Looker Queries
    model: system__activity
    explore: history
    type: looker_single_record
    fields: [history.created_time, history.connection_name, history.status, user.email,
      history.source, history.id, query.id, query.link, query.model, query.view, query.formatted_fields]
    filters:
      history.source: ''
    limit: 500
    column_limit: 50
    show_view_names: true
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      history.id: History ID
      query.id: Query ID
      user.name: User Name
      user.email: User Email
    defaults_version: 1
    series_types: {}
    hidden_fields: [query.formatted_fields]
    listen:
      Slug: history.slug
    row: 5
    col: 0
    width: 5
    height: 7
  - name: ''
    type: text
    title_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Enter the Slug of the Query that
      has run from Looker"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 2
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    body_text: '[{"type":"h1","children":[{"text":"Big Query Information"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 12
    col: 0
    width: 24
    height: 2
  - title: Looker Runtime in Seconds
    name: Looker Runtime in Seconds
    model: system__activity
    explore: history
    type: single_value
    fields: [history.runtime]
    filters:
      history.source: ''
    sorts: [history.runtime desc]
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
    single_value_title: Looker Runtime in Seconds
    value_format: ''
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      history.id: History ID
      query.id: Query ID
      user.name: User Name
      user.email: User Email
    defaults_version: 1
    series_types: {}
    listen:
      Slug: history.slug
    row: 2
    col: 0
    width: 5
    height: 3
  - title: GB Processed
    name: GB Processed
    # model: sam-pitcher-playground
    explore: jobs_by_project
    type: single_value
    fields: [jobs_by_project.total_gigabytes_processed]
    filters:
      parameters.project_name: ''
      parameters.region: ''
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      jobs_by_project.total_kilobytes_processed:
        is_active: false
    hidden_pivots: {}
    defaults_version: 1
    series_types: {}
    listen:
      Region: parameters.region
      Slug: jobs_by_project__labels.value
      Project Name: parameters.project_name
    row: 17
    col: 0
    width: 6
    height: 2
  - title: Total Slots
    name: Total Slots
    # model: sam-pitcher-playground
    explore: jobs_by_project
    type: single_value
    fields: [jobs_by_project.total_slots]
    filters:
      parameters.project_name: ''
      parameters.region: ''
    sorts: [jobs_by_project.total_slots desc 0]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      jobs_by_project.total_kilobytes_processed:
        is_active: false
    hidden_pivots: {}
    defaults_version: 1
    series_types: {}
    listen:
      Region: parameters.region
      Slug: jobs_by_project__labels.value
      Project Name: parameters.project_name
    row: 14
    col: 0
    width: 6
    height: 3
  - title: KB Processed
    name: KB Processed
    # model: sam-pitcher-playground
    explore: jobs_by_project
    type: single_value
    fields: [jobs_by_project.total_kilobytes_processed]
    filters:
      parameters.project_name: ''
      parameters.region: ''
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      jobs_by_project.total_kilobytes_processed:
        is_active: false
    hidden_pivots: {}
    defaults_version: 1
    series_types: {}
    listen:
      Region: parameters.region
      Slug: jobs_by_project__labels.value
      Project Name: parameters.project_name
    row: 19
    col: 0
    width: 6
    height: 2
  - title: Slots over Time
    name: Slots over Time
    # model: sam-pitcher-playground
    explore: jobs_by_project
    type: looker_area
    fields: [jobs_timeline_by_project.period_start_time, jobs_timeline_by_project.max_slots]
    filters: {}
    sorts: [jobs_timeline_by_project.period_start_time]
    limit: 500
    column_limit: 50
    dynamic_fields: [{args: [jobs_timeline_by_project.max_slots], calculation_type: running_total,
        category: table_calculation, based_on: jobs_timeline_by_project.max_slots,
        label: Running total of Jobs Timeline By Project Max Slots, source_field: jobs_timeline_by_project.max_slots,
        table_calculation: running_total_of_jobs_timeline_by_project_max_slots, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, is_disabled: true}]
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
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}, {reference_type: line, line_value: max, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#EA4335"}]
    trend_lines: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      jobs_by_project.total_kilobytes_processed:
        is_active: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Region: parameters.region
      Slug: jobs_by_project__labels.value
      Project Name: parameters.project_name
    row: 14
    col: 6
    width: 18
    height: 13
  - name: " (Copy 2)"
    type: text
    title_text: " (Copy 2)"
    body_text: '[{"type":"p","children":[{"text":"Source: "},{"type":"a","url":"https://github.com/sam-pitcher/bq_optimization_lookml","children":[{"text":"https://github.com/sam-pitcher/bq_optimization_lookml"}],"id":1679930361661},{"text":""}],"id":1679930341417,"align":"right"}]'
    rich_content_json: '{"format":"slate"}'
    row: 52
    col: 0
    width: 24
    height: 2
  - title: Job Overview
    name: Job Overview
    # model: sam-pitcher-playground
    explore: jobs_by_project
    type: looker_single_record
    fields: [jobs_by_project.job_id, jobs_by_project.creation_time_time, jobs_by_project.start_time_time,
      jobs_by_project.end_time_time, jobs_by_project.user_email, jobs_by_project.job_type,
      jobs_by_project.priority, jobs_by_project.state, jobs_by_project.statement_type]
    filters: {}
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      jobs_by_project.total_kilobytes_processed:
        is_active: false
    hidden_pivots: {}
    defaults_version: 1
    series_types: {}
    listen:
      Region: parameters.region
      Slug: jobs_by_project__labels.value
      Project Name: parameters.project_name
    row: 21
    col: 0
    width: 6
    height: 6
  - title: Query SQL
    name: Query SQL
    # model: sam-pitcher-playground
    explore: jobs_by_project
    type: table
    fields: [jobs_by_project.query]
    filters: {}
    sorts: [jobs_by_project.query]
    limit: 1
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      jobs_by_project.total_kilobytes_processed:
        is_active: false
    hidden_pivots: {}
    defaults_version: 1
    series_types: {}
    color_application: undefined
    listen:
      Region: parameters.region
      Slug: jobs_by_project__labels.value
      Project Name: parameters.project_name
    row: 44
    col: 0
    width: 24
    height: 8
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"p","children":[{"text":"Source: "},{"type":"a","url":"https://github.com/sam-pitcher/bq_optimization_lookml","children":[{"text":"https://github.com/sam-pitcher/bq_optimization_lookml"}],"id":1679930361661},{"text":""}],"align":"right","id":1679930767423}]'
    rich_content_json: '{"format":"slate"}'
    row: 42
    col: 0
    width: 24
    height: 2
  filters:
  - name: Region
    title: Region
    type: field_filter
    default_value: us
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    # model: sam-pitcher-playground
    explore: jobs_by_project
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
    explore: jobs_by_project
    listens_to_filters: []
    field: parameters.project_name
  - name: Slug
    title: Slug
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: system__activity
    explore: query_metrics
    listens_to_filters: []
    field: history.slug
