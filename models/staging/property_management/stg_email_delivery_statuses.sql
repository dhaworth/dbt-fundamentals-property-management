with email_delivery_statuses as (

    select

        id as email_delivery_status_id,
        event,
        email_id,
        created_at,
        uploaded_at   
    
    from {{ source('property_management', 'email_delivery_statuses') }}
)

select * from email_delivery_statuses