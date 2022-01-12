with emails as (

    select

        id,
        name,
        subject,
        body,
        sent_at,
        delivered_at,
        created_at,
        uploaded_at      
    
    from {{ source('property_management', 'emails') }}
)

select * from emails