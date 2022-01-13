with properties as (

    select
        
        id as property_id,
        name as property_name,
        address as property_address,
        city as property_city,
        state as property_state,
        zip_code as property_zip_code,
        type as property_type,
        year_built as property_year_built,
        created_at,
        uploaded_at
    
    from {{ source('property_management', 'properties') }}
)

select * from properties