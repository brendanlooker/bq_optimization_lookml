include: "/jobs/*.view.lkml"
include: "/dashboards/*.dashboard"

explore: jobs_by_project {
  sql_always_where:
  ${jobs_by_project.job_type} = 'QUERY' AND ${jobs_by_project.statement_type} <> 'SCRIPT' ;;
  always_filter: {
    filters: [
      project_name: "",
      region: "us"
    ]
  }
  join: jobs_by_project__labels {
    sql: , UNNEST(labels) AS jobs_by_project__labels ;;
    relationship: one_to_many
  }
  join: jobs_by_project__job_stages {
    sql: , UNNEST(job_stages) AS jobs_by_project__job_stages ;;
    relationship: one_to_many
  }
}

explore: jobs_timeline_by_project {
  sql_always_where:
  ${jobs_timeline_by_project.job_type} = 'QUERY' AND ${jobs_timeline_by_project.statement_type} <> 'SCRIPT' ;;
  always_filter: {
    filters: [
      project_name: "",
      region: "us"
    ]
  }
  join: jobs_by_project_timeline__labels {
    sql: , UNNEST(labels) AS jobs_by_project_timeline__labels ;;
    relationship: one_to_many
  }
}

explore: quantile_statistics {
  always_filter: {
    filters: [
      period_start_filter: "2023-01-01",
      project_name: "",
      region: "us"
    ]
  }
}

explore: quantile_statistics_hourly {
  always_filter: {
    filters: [
      period_start_filter: "2023-01-01",
      project_name: "",
      region: "us"
    ]
  }
}
