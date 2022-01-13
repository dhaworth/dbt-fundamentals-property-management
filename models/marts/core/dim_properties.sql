with properties as (

    select * from {{ ref('stg_properties')}}

),

property_owners as (

    select * from {{ ref('stg_property_owners') }}

),

units as (

    select * from {{ ref('stg_units') }}

),

final as (

    select
        
        properties.property_name,
        properties.property_address,
        properties.property_city,
        properties.property_state,
        properties.property_zip_code,
        properties.property_type,
        properties.property_year_built,
        units.unit_rent,
        units.unit_name,
        units.unit_bedrooms,
        units.unit_bathrooms,
        units.unit_square_feet,
        units.unit_status,
        units.unit_address_1,
        units.unit_address_2,
        units.unit_city,
        units.unit_state,
        units.unit_zip_code

    from properties

    left join property_owners on properties.property_id = property_owners.property_id
    left join units on properties.property_id = units.property_id

)

select * from final