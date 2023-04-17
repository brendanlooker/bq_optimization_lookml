view: jobs_by_project {
  derived_table: {
    sql: select * from `{{ _filters['parameters.project_name'] | sql_quote | replace: "'", "" }}`.`region-{{ _filters['parameters.region'] | sql_quote | replace: "'", "" }}`.INFORMATION_SCHEMA.JOBS_BY_PROJECT
      ;;
  }

  # filter: project_name {
  #   type: string
  # }

  # filter: region {
  #   type: string
  #   suggestions: ["eu","us"]
  # }

  dimension: job_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.job_id ;;
  }

  dimension_group: creation_time {
    type: time
    sql: ${TABLE}.creation_time ;;
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

  dimension_group: start_time {
    type: time
    sql: ${TABLE}.start_time ;;
  }

  dimension_group: end_time {
    type: time
    sql: ${TABLE}.end_time ;;
  }

  dimension: query {
    type: string
    sql: ${TABLE}.query ;;
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

  dimension: kilobytes_processed {
    type: number
    sql: ${bytes_processed} * 1e-3 ;;
  }

  dimension: megabytes_processed {
    type: number
    sql: ${bytes_processed} * 1e-6 ;;
  }

  dimension: gigabytes_processed {
    type: number
    sql: ${bytes_processed} * 1e-9 ;;
  }

  dimension: terrabytes_processed {
    type: number
    sql: ${bytes_processed} * 1e-12 ;;
  }

  dimension: total_slot_ms {
    type: number
    sql: ${TABLE}.total_slot_ms ;;
  }

  dimension: slots {
    type: number
    sql: ${total_slot_ms} / 1000.0 ;;
  }


  dimension: error_result {
    type: string
    sql: ${TABLE}.error_result ;;
  }

  dimension: cache_hit {
    type: yesno
    sql: ${TABLE}.cache_hit ;;
  }

  dimension: destination_table {
    type: string
    sql: ${TABLE}.destination_table ;;
  }

  dimension: referenced_tables {
    type: string
    sql: ${TABLE}.referenced_tables ;;
  }

  dimension: labels {
    type: string
    sql: ${TABLE}.labels ;;
  }

  dimension: timeline {
    type: string
    sql: ${TABLE}.timeline ;;
  }

  dimension: job_stages {
    type: string
    sql: ${TABLE}.job_stages ;;
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

  dimension: session_info {
    type: string
    sql: ${TABLE}.session_info ;;
  }

  dimension: dml_statistics {
    type: string
    sql: ${TABLE}.dml_statistics ;;
  }

  dimension: total_modified_partitions {
    type: number
    sql: ${TABLE}.total_modified_partitions ;;
  }

  dimension: bi_engine_statistics {
    type: string
    sql: ${TABLE}.bi_engine_statistics ;;
  }

  dimension: query_info {
    type: string
    sql: ${TABLE}.query_info ;;
  }

  dimension: transferred_bytes {
    type: number
    sql: ${TABLE}.transferred_bytes ;;
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

  measure: total_kilobytes_processed {
    type: sum
    sql: ${kilobytes_processed} ;;
    value_format_name: decimal_0
    html: {{rendered_value}} kb ;;
  }

  measure: total_megabytes_processed {
    type: sum
    sql: ${megabytes_processed} ;;
    value_format_name: decimal_0
    html: {{rendered_value}} mb ;;
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

view: jobs_by_project__labels {
  dimension: key {}
  dimension: value {}
}

view: jobs_by_project__job_stages {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: start_ms {
    type: number
    sql: ${TABLE}.start_ms ;;
  }

  dimension: end_ms {
    type: number
    sql: ${TABLE}.end_ms ;;
  }

  dimension: wait_ratio_avg {
    type: number
    sql: ${TABLE}.wait_Ratio_Avg ;;
  }

  dimension: wait_ms_avg {
    type: number
    sql: ${TABLE}.wait_Ms_Avg ;;
  }

  dimension: wait_ratio_max {
    type: number
    sql: ${TABLE}.wait_Ratio_Max ;;
  }

  dimension: wait_ms_max {
    type: number
    sql: ${TABLE}.wait_Ms_Max ;;
  }

  dimension: read_ratio_avg {
    type: number
    sql: ${TABLE}.read_Ratio_Avg ;;
  }

  dimension: read_ms_avg {
    type: number
    sql: ${TABLE}.read_Ms_Avg ;;
  }

  dimension: read_ratio_max {
    type: number
    sql: ${TABLE}.read_Ratio_Max ;;
  }

  dimension: read_ms_max {
    type: number
    sql: ${TABLE}.read_Ms_Max ;;
  }

  dimension: compute_ratio_avg {
    type: number
    sql: ${TABLE}.compute_Ratio_Avg ;;
  }

  dimension: compute_ms_avg {
    type: number
    sql: ${TABLE}.compute_Ms_Avg ;;
  }

  dimension: compute_ratio_max {
    type: number
    sql: ${TABLE}.compute_Ratio_Max ;;
  }

  dimension: compute_ms_max {
    type: number
    sql: ${TABLE}.compute_Ms_Max ;;
  }

  dimension: write_ratio_avg {
    type: number
    sql: ${TABLE}.write_Ratio_Avg ;;
  }

  dimension: write_ms_avg {
    type: number
    sql: ${TABLE}.write_Ms_Avg ;;
  }

  dimension: write_ratio_max {
    type: number
    sql: ${TABLE}.write_Ratio_Max ;;
  }

  dimension: write_ms_max {
    type: number
    sql: ${TABLE}.write_Ms_Max ;;
  }

  dimension: shuffle_output_bytes {
    type: number
    sql: ${TABLE}.shuffle_Output_Bytes ;;
  }

  dimension: shuffle_output_bytes_spilled {
    type: number
    sql: ${TABLE}.shuffle_Output_Bytes_Spilled ;;
  }

  dimension: records_read {
    type: number
    sql: ${TABLE}.records_Read ;;
  }

  dimension: records_written {
    type: number
    sql: ${TABLE}.records_Written ;;
  }

  dimension: parallel_inputs {
    type: number
    sql: ${TABLE}.parallel_Inputs ;;
  }

  dimension: completed_parallel_inputs {
    type: number
    sql: ${TABLE}.completed_Parallel_Inputs ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: slot_ms {
    type: number
    sql: ${TABLE}.slot_Ms ;;
  }

}
