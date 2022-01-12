with leases as (

    select
    
        id,
        unit_id,
        rental_application_id,
        completed,
        start_date,
        end_date,
        created_at,
        uploaded_at
    
    from {{ source('property_management', 'leases') }}
)

select * from leases