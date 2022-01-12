with property_owners as (

    select
        
        id,
        property_id,
        owner_id,
        uploaded_at
    
    from {{ source('property_management', 'property_owners') }}
)

select * from property_owners