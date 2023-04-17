- dashboard: query_performance_metrics
  title: Query Performance Metrics
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: byqjsPBxwEPRJkoLWeYaUQ
  elements:
  - title: Query Performance Metrics
    name: Query Performance Metrics
    model: system__activity
    explore: query_metrics
    type: looker_grid
    fields: [query.id, history.source, history.completed_time, history.dashboard_id,
      query_metrics.project_init, query_metrics.model_init_computed, query_metrics.model_init_cache,
      query_metrics.explore_init, query_metrics.marshalled_cache_load, query_metrics.prepare,
      query_metrics.acquire_connection, query_metrics.connection_held, query_metrics.execute_main_query,
      query_metrics.execute_fill_min_query, query_metrics.execute_fill_max_query,
      query_metrics.execute_fill_pivot_min_query, query_metrics.execute_fill_pivot_max_query,
      query_metrics.execute_totals_query, query_metrics.execute_row_totals_query,
      query_metrics.execute_grand_totals_query, query_metrics.load_main_query_in_memory,
      query_metrics.load_fill_min_query_in_memory, query_metrics.load_fill_max_query_in_memory,
      query_metrics.load_fill_pivot_min_query_in_memory, query_metrics.load_fill_pivot_max_query_in_memory,
      query_metrics.load_totals_query_in_memory, query_metrics.load_row_totals_query_in_memory,
      query_metrics.load_grand_totals_query_in_memory, query_metrics.post_processing,
      query_metrics.pdt, query_metrics.cache_load, query_metrics.stream_to_cache,
      query_metrics.async_processing, query_metrics.queued, query_metrics.per_user_throttler,
      history.slug]
    filters: {}
    sorts: [history.completed_time desc]
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
    defaults_version: 1
    listen:
      Slug: history.slug
      Created Time: history.created_time
      Created Date: history.created_date
      Connection Name: history.connection_name
      Query ID: query.id
      Model: query.model
      Explore: query.view
      Looker User Email: user.email
    row: 16
    col: 0
    width: 24
    height: 5
  - title: BQ Query Performance Metrics
    name: BQ Query Performance Metrics
    # model: bq_optimization
    explore: jobs_by_project
    type: looker_grid
    fields: [jobs_by_project.creation_time_date, jobs_by_project.creation_time_time,
      jobs_by_project__labels.value, jobs_by_project.job_id, jobs_by_project.job_type,
      jobs_by_project.total_kilobytes_processed, jobs_by_project.total_megabytes_processed,
      jobs_by_project.max_slots, jobs_by_project.total_slots, jobs_by_project.total_slot_ms]
    filters: {}
    sorts: [jobs_by_project__labels.value]
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
      jobs_by_project.total_kilobytes_processed:
        is_active: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Slug: jobs_by_project__labels.value
      Created Time: jobs_by_project.creation_time_time
      Created Date: jobs_by_project.creation_time_date
      Region: parameters.region
      Project Name: parameters.project_name
    row: 23
    col: 0
    width: 24
    height: 7
  - title: BQ Query Job Stages
    name: BQ Query Job Stages
    # model: bq_optimization
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Slug: jobs_by_project__labels.value
      Created Time: jobs_by_project.creation_time_time
      Created Date: jobs_by_project.creation_time_date
      Region: parameters.region
      Project Name: parameters.project_name
    row: 30
    col: 0
    width: 24
    height: 12
  - title: Looker Queries
    name: Looker Queries
    model: system__activity
    explore: history
    type: looker_grid
    fields: [history.runtime, history.created_time, history.connection_name, history.slug,
      history.status, user.name, user.email, history.source, history.id, query.id,
      query.link, query.model, query.view, query.formatted_fields]
    filters:
      history.source: ''
    sorts: [history.runtime desc]
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
    listen:
      Slug: history.slug
      Created Time: history.created_time
      Created Date: history.created_date
      Connection Name: history.connection_name
      Query ID: query.id
      Model: query.model
      Explore: query.view
      Looker User Email: user.email
    row: 4
    col: 0
    width: 24
    height: 12
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"See slowest queries"}],"align":"center"},{"type":"p","children":[{"text":""}],"id":1679500683737},{"type":"p","id":1679500710818,"children":[{"text":"Add
      the Slug of the queries to the filter at the top to see both the BigQuery and
      Looker metrics below."}],"align":"center"},{"type":"p","id":1679502446164,"align":"center","children":[{"text":"Can
      also get the Query ID from the "},{"text":"Looker Most Run Queries","bold":true},{"text":"
      dashboard."}]}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 4
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Big Query Information"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 21
    col: 0
    width: 24
    height: 2
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
    # model: bq_optimization
    explore: jobs_by_project
    listens_to_filters: []
    field: parameters.region
  - name: Project Name
    title: Project Name
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    # model: bq_optimization
    explore: jobs_by_project
    listens_to_filters: []
    field: parameters.project_name
  - name: Created Date
    title: Created Date
    type: field_filter
    default_value: today
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: system__activity
    explore: query_metrics
    listens_to_filters: []
    field: history.created_date
  - name: Created Time
    title: Created Time
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: system__activity
    explore: query_metrics
    listens_to_filters: []
    field: history.created_time
  - name: Looker User Email
    title: Looker User Email
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: system__activity
    explore: query_metrics
    listens_to_filters: []
    field: user.email
  - name: Connection Name
    title: Connection Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: system__activity
    explore: query_metrics
    listens_to_filters: []
    field: history.connection_name
  - name: Model
    title: Model
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: system__activity
    explore: history
    listens_to_filters: []
    field: query.model
  - name: Explore
    title: Explore
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: system__activity
    explore: query_metrics
    listens_to_filters: []
    field: query.view
  - name: Query ID
    title: Query ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options:
      - '1'
    model: system__activity
    explore: query_metrics
    listens_to_filters: []
    field: query.id
  - name: Slug
    title: Slug
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: system__activity
    explore: query_metrics
    listens_to_filters: []
    field: history.slug
