view: jobs_timeline_by_project {
  derived_table: {
    sql: SELECT * FROM `{{ _filters['parameters.project_name'] | sql_quote | replace: "'", "" }}`.`region-{{ _filters['parameters.region'] | sql_quote | replace: "'", "" }}`.INFORMATION_SCHEMA.JOBS_TIMELINE_BY_PROJECT ;;
  }

  # filter: project_name {
  #   type: string
  # }

  # filter: region {
  #   type: string
  #   suggestions: ["eu","us"]
  # }

  dimension: period_start_from_parameter {
    label_from_parameter: parameters.timeframe
    sql:
    {% if parameters.timeframe._parameter_value == "second" %}${period_start_time}
    {% elsif parameters.timeframe._parameter_value == "minute" %}${period_start_minute}
    {% elsif parameters.timeframe._parameter_value == "hour" %}${period_start_hour}
    {% else %}${period_start_time}
    {% endif %}
    ;;
  }

  dimension_group: period_start {
    type: time
    sql: ${TABLE}.period_start ;;
  }

  dimension: period_slot_ms {
    type: number
    sql: ${TABLE}.period_slot_ms ;;
  }

  dimension: slots {
    type: number
    sql: ${period_slot_ms} / 1000.0 ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }

  dimension: project_number {
    type: number
    sql: ${TABLE}.project_number ;;
  }

  dimension: user_email {
    type: string
    sql: ${TABLE}.user_email ;;
  }

  dimension: job_id {
    type: string
    sql: ${TABLE}.job_id ;;
  }

  dimension: job_type {
    type: string
    sql: ${TABLE}.job_type ;;
  }

  dimension: statement_type {
    type: string
    sql: ${TABLE}.statement_type ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }

  dimension_group: job_creation_time {
    type: time
    sql: ${TABLE}.job_creation_time ;;
  }

  dimension_group: job_start_time {
    type: time
    sql: ${TABLE}.job_start_time ;;
  }

  dimension_group: job_end_time {
    type: time
    sql: ${TABLE}.job_end_time ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: reservation_id {
    type: string
    sql: ${TABLE}.reservation_id ;;
  }

  dimension: bytes_processed {
    type: number
    sql: ${TABLE}.total_bytes_processed ;;
  }

  dimension: gigabytes_processed {
    type: number
    sql: ${bytes_processed} * 1e-9 ;;
  }

  dimension: terrabytes_processed {
    type: number
    sql: ${bytes_processed} * 1e-12 ;;
  }

  dimension: error_result {
    type: string
    sql: ${TABLE}.error_result ;;
  }

  dimension: cache_hit {
    type: yesno
    sql: ${TABLE}.cache_hit ;;
  }

  dimension: total_bytes_billed {
    type: number
    sql: ${TABLE}.total_bytes_billed ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: parent_job_id {
    type: string
    sql: ${TABLE}.parent_job_id ;;
  }

  dimension: period_shuffle_ram_usage_ratio {
    type: number
    sql: ${TABLE}.period_shuffle_ram_usage_ratio ;;
  }

  dimension: period_estimated_runnable_units {
    type: number
    sql: ${TABLE}.period_estimated_runnable_units ;;
  }

  measure: job_count {
    type: count_distinct
    sql: ${job_id} ;;
  }

  measure: total_slots {
    type: sum
    sql: ${slots} ;;
    value_format_name: decimal_0
    html: {{rendered_value}} slots ;;
  }

  measure: max_slots {
    type: max
    sql: ${slots} ;;
    value_format_name: decimal_0
    html: {{rendered_value}} slots ;;
  }

  measure: total_gigabytes_processed {
    type: sum
    sql: ${gigabytes_processed} ;;
    value_format_name: decimal_0
    html: {{rendered_value}} gb ;;
  }

  measure: total_terrabytes_processed {
    type: sum
    sql: ${terrabytes_processed} ;;
    value_format_name: decimal_0
    html: {{rendered_value}} tb ;;
  }

}
