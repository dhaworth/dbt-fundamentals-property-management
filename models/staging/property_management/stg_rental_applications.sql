with rental_applications as (

    select
        
        id,
        status,
        contact_info_id,
        deleted_at,
        created_at,
        uploaded_at
    
    from {{ source('property_management', 'rental_applications') }}
)

select * from rental_applications