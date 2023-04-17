view: quantile_statistics {
  # extends: [quantile_statistics]
  derived_table: {
    sql:
    WITH a AS (
      WITH
        all_seconds AS (
        SELECT
          period_start
        FROM (
          SELECT
            period_start
          FROM
            UNNEST (GENERATE_TIMESTAMP_ARRAY({% date_start period_start_filter %}, {% date_end period_start_filter %}, INTERVAL 1 SECOND)) period_start )),
        seconds_when_project_was_active AS (
        SELECT
          period_start,
          SUM(period_slot_ms)/1000.0 AS total_slots_this_second
        FROM
          `{{ _filters['parameters.project_name'] | sql_quote | replace: "'", "" }}`.`region-{{ _filters['parameters.region'] | sql_quote | replace: "'", "" }}`.INFORMATION_SCHEMA.JOBS_TIMELINE_BY_PROJECT
        GROUP BY
          period_start),
        full_project_timeline AS (
        SELECT
          s.period_start,
          IFNULL(a.total_slots_this_second, 0) AS total_slots_this_second
        FROM
          all_seconds s
        LEFT JOIN
          seconds_when_project_was_active a
        USING
          (period_start) )
      SELECT
            {% if parameters.timeframe._parameter_value == "second" %}period_start
            {% elsif parameters.timeframe._parameter_value == "minute" %}FORMAT_TIMESTAMP('%F %H:%M', period_start )
            {% elsif parameters.timeframe._parameter_value == "hour" %}FORMAT_TIMESTAMP('%F %H', period_start )
            {% else %}null
            {% endif %}as timeframe,
        PERCENTILE_CONT(total_slots_this_second, 0.50) OVER(partition by extract(hour from period_start)) AS percentile50,
        PERCENTILE_CONT(total_slots_this_second, 0.60) OVER(partition by extract(hour from period_start)) AS percentile60,
        PERCENTILE_CONT(total_slots_this_second, 0.70) OVER(partition by extract(hour from period_start)) AS percentile70,
        PERCENTILE_CONT(total_slots_this_second, 0.90) OVER(partition by extract(hour from period_start)) AS percentile90,
        PERCENTILE_CONT(total_slots_this_second, 0.93) OVER(partition by extract(hour from period_start)) AS percentile93,
        PERCENTILE_CONT(total_slots_this_second, 0.94) OVER(partition by extract(hour from period_start)) AS percentile94,
        PERCENTILE_CONT(total_slots_this_second, 0.95) OVER(partition by extract(hour from period_start)) AS percentile95,
        PERCENTILE_CONT(total_slots_this_second, 0.96) OVER(partition by extract(hour from period_start)) AS percentile96,
        PERCENTILE_CONT(total_slots_this_second, 0.97) OVER(partition by extract(hour from period_start)) AS percentile97,
        PERCENTILE_CONT(total_slots_this_second, 0.98) OVER(partition by extract(hour from period_start)) AS percentile98,
        PERCENTILE_CONT(total_slots_this_second, 0.99) OVER(partition by extract(hour from period_start)) AS percentile99
      FROM
        full_project_timeline)
      SELECT * FROM a
      GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12 ;;

  }

  dimension: timeframe {
    type: string
    sql: ${TABLE}.timeframe ;;
  }

  filter: period_start_filter {
    type: date_time
  }

  dimension: percentile_50 {
    type: number
    sql: ${TABLE}.percentile50 ;;
  }

  dimension: percentile_60 {
    type: number
    sql: ${TABLE}.percentile60 ;;
  }

  dimension: percentile_70 {
    type: number
    sql: ${TABLE}.percentile70 ;;
  }

  dimension: percentile_90 {
    type: number
    sql: ${TABLE}.percentile90 ;;
  }

  dimension: percentile_93 {
    type: number
    sql: ${TABLE}.percentile93 ;;
  }

  dimension: percentile_94 {
    type: number
    sql: ${TABLE}.percentile94 ;;
  }

  dimension: percentile_95 {
    type: number
    sql: ${TABLE}.percentile95 ;;
  }

  dimension: percentile_96 {
    type: number
    sql: ${TABLE}.percentile96 ;;
  }

  dimension: percentile_97 {
    type: number
    sql: ${TABLE}.percentile97 ;;
  }

  dimension: percentile_98 {
    type: number
    sql: ${TABLE}.percentile98 ;;
  }

  dimension: percentile_99 {
    type: number
    sql: ${TABLE}.percentile99 ;;
  }

}


# view: quantile_statistics_old {
#   derived_table: {
#     sql:
# WITH
#   all_seconds AS (
#   SELECT
#     period_start
#   FROM (
#     SELECT
#       period_start
#     FROM
#       UNNEST (GENERATE_TIMESTAMP_ARRAY({% date_start period_start_filter %}, {% date_end period_start_filter %}, INTERVAL 1 SECOND)) period_start )),
#   seconds_when_project_was_active AS (
#   SELECT
#     period_start,
#     SUM(period_slot_ms)/1000.0 AS total_slots_this_second
#   FROM
#     `{{ _filters['parameters.project_name'] | sql_quote | replace: "'", "" }}`.`region-{{ _filters['parameters.region'] | sql_quote | replace: "'", "" }}`.INFORMATION_SCHEMA.JOBS_TIMELINE_BY_PROJECT
#   GROUP BY
#     period_start),
#   full_project_timeline AS (
#   SELECT
#     s.period_start,
#     IFNULL(a.total_slots_this_second, 0) AS total_slots_this_second
#   FROM
#     all_seconds s
#   LEFT JOIN
#     seconds_when_project_was_active a
#   USING
#     (period_start) )
# SELECT
#     {% if parameters.timeframe._parameter_value == "second" %}period_start
#     {% elsif parameters.timeframe._parameter_value == "minute" %}FORMAT_TIMESTAMP('%F %H:%M', period_start )
#     {% elsif parameters.timeframe._parameter_value == "hour" %}FORMAT_TIMESTAMP('%F %H', period_start )
#     {% else %}${period_start_time}
#     {% endif %}as timeframe,
#   PERCENTILE_CONT(total_slots_this_second, 0.50) OVER() AS percentile50,
#   PERCENTILE_CONT(total_slots_this_second, 0.60) OVER() AS percentile60,
#   PERCENTILE_CONT(total_slots_this_second, 0.70) OVER() AS percentile70,
#   PERCENTILE_CONT(total_slots_this_second, 0.90) OVER() AS percentile90,
#   PERCENTILE_CONT(total_slots_this_second, 0.93) OVER() AS percentile93,
#   PERCENTILE_CONT(total_slots_this_second, 0.94) OVER() AS percentile94,
#   PERCENTILE_CONT(total_slots_this_second, 0.95) OVER() AS percentile95,
#   PERCENTILE_CONT(total_slots_this_second, 0.96) OVER() AS percentile96,
#   PERCENTILE_CONT(total_slots_this_second, 0.97) OVER() AS percentile97,
#   PERCENTILE_CONT(total_slots_this_second, 0.98) OVER() AS percentile98,
#   PERCENTILE_CONT(total_slots_this_second, 0.99) OVER() AS percentile99
# FROM
#   full_project_timeline
# LIMIT
#   1
#     ;;
#   }

#   filter: period_start_filter {
#     type: date_time
#   }

#   # filter: project_name {
#   #   type: string
#   # }

#   # filter: region {
#   #   type: string
#   #   suggestions: ["eu","us"]
#   # }

#   dimension: percentile_50 {
#     type: number
#     sql: ${TABLE}.percentile50 ;;
#   }

#   dimension: percentile_60 {
#     type: number
#     sql: ${TABLE}.percentile60 ;;
#   }

#   dimension: percentile_70 {
#     type: number
#     sql: ${TABLE}.percentile70 ;;
#   }

#   dimension: percentile_90 {
#     type: number
#     sql: ${TABLE}.percentile90 ;;
#   }

#   dimension: percentile_93 {
#     type: number
#     sql: ${TABLE}.percentile93 ;;
#   }

#   dimension: percentile_94 {
#     type: number
#     sql: ${TABLE}.percentile94 ;;
#   }

#   dimension: percentile_95 {
#     type: number
#     sql: ${TABLE}.percentile95 ;;
#   }

#   dimension: percentile_96 {
#     type: number
#     sql: ${TABLE}.percentile96 ;;
#   }

#   dimension: percentile_97 {
#     type: number
#     sql: ${TABLE}.percentile97 ;;
#   }

#   dimension: percentile_98 {
#     type: number
#     sql: ${TABLE}.percentile98 ;;
#   }

#   dimension: percentile_99 {
#     type: number
#     sql: ${TABLE}.percentile99 ;;
#   }

# }
