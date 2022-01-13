with units as (

    select
        
        id as unit_id,
        rent as unit_rent,
        property_id,
        name as unit_name,
        bedrooms as unit_bedrooms,
        bathrooms as unit_bathrooms,
        square_feet as unit_square_feet,
        status as unit_status,
        address_1 as unit_address_1,
        address_2 as unit_address_2,
        city as unit_city,
        state as unit_state,
        zip_code as unit_zip_code,
        created_at,
        uploaded_at
    
    from {{ source('property_management', 'units') }}
)

select * from units