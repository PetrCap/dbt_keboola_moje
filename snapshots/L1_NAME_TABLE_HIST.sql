{% snapshot L1_NAME_TABLE_HIST %}

{{
        config(
          target_schema='WORKSPACE_83127792',
          strategy='check',
          unique_key='"Jmeno"',
          check_cols=['"Prijmeni"'],
          invalidate_hard_deletes=True
        )
    }}

select * FROM {{ ref("L1_NAME_TABLE") }}

{% endsnapshot %}