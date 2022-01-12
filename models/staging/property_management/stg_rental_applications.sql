with rental_applications as (

    select
        
        id as rental_application_id,
        status as rental_application_status,
        contact_info_id,
        deleted_at as rental_application_deleted_at,
        created_at,
        uploaded_at
    
    from {{ source('property_management', 'rental_applications') }}
)

select * from rental_applications