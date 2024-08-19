{% snapshot L0_hist %}

{{
        config(
          target_schema='WORKSPACE_83127792',
          strategy='check',
          unique_key='"Jmeno"',
          check_cols=['"Prijmeni"'],
          invalidate_hard_deletes=True
        )
    }}

select * FROM {{ source('in.c-csv-import', 'L0_jmena') }}

{% endsnapshot %}