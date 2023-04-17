- dashboard: looker_most_run_queries
  title: Looker Most Run Queries
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: voXRCjutz28r7ZkiqeAZsV
  elements:
  - title: Looker Most Run Queries
    name: Looker Most Run Queries
    model: system__activity
    explore: history
    type: looker_grid
    fields: [history.connection_name, history.status, user.name, user.email, history.source,
      query.id, query.link, query.model, query.view, history.query_run_count, history.average_runtime,
      history.max_runtime, history.min_runtime, history.first_query_date, history.most_recent_query_date,
      history.cache_result_query_count, history.database_result_query_count]
    filters: {}
    sorts: [history.query_run_count desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: 'abs(${history.max_runtime}-${history.min_runtime})',
        label: Diff Min Max, value_format: !!null '', value_format_name: decimal_3,
        _kind_hint: measure, table_calculation: diff_min_max, _type_hint: number}]
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
    column_order: ["$$$_row_numbers_$$$", history.connection_name, history.status,
      user.name, user.email, history.source, query.id, query.link, query.model, query.view,
      history.query_run_count, history.average_runtime, history.max_runtime, history.min_runtime,
      diff_min_max, history.first_query_date, history.most_recent_query_date, history.cache_result_query_count,
      history.database_result_query_count]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      history.query_run_count:
        is_active: true
      history.average_runtime:
        is_active: true
      history.max_runtime:
        is_active: false
      history.min_runtime:
        is_active: false
      diff_min_max:
        is_active: true
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Created Time: history.created_time
      Source: history.source
      Connection Name: history.connection_name
      Slug: history.slug
      Created Date: history.created_date
      Status: history.status
      Looker User Email: user.email
      Model: query.model
      Results from Database: history.database_result_query_count
    row: 3
    col: 0
    width: 24
    height: 24
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Looker''s Most Run Queries"}],"align":"center"},{"type":"p","children":[{"text":""}],"id":1679502524584,"align":"center"},{"type":"p","id":1679502557477,"align":"center","children":[{"text":"Use
      this Dashboard to get the Query ID and then parse it to the "},{"text":"Query
      Performance Metrics","bold":true},{"text":" Dashboard."}]}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 3
  filters:
  - name: Created Time
    title: Created Time
    type: field_filter
    default_value: 2 hours
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: system__activity
    explore: history
    listens_to_filters: []
    field: history.created_time
  - name: Source
    title: Source
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: system__activity
    explore: history
    listens_to_filters: []
    field: history.source
  - name: Slug
    title: Slug
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: system__activity
    explore: history
    listens_to_filters: []
    field: history.slug
  - name: Connection Name
    title: Connection Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: system__activity
    explore: history
    listens_to_filters: []
    field: history.connection_name
  - name: Created Date
    title: Created Date
    type: field_filter
    default_value: today
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
    model: system__activity
    explore: history
    listens_to_filters: []
    field: history.created_date
  - name: Status
    title: Status
    type: field_filter
    default_value: complete
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: system__activity
    explore: history
    listens_to_filters: []
    field: history.status
  - name: Looker User Email
    title: Looker User Email
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: system__activity
    explore: history
    listens_to_filters: []
    field: user.email
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
  - name: Results from Database
    title: Results from Database
    type: field_filter
    default_value: ">=1"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: system__activity
    explore: history
    listens_to_filters: []
    field: history.database_result_query_count
