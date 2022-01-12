with properties as (

    select
        
        id,
        name,
        address,
        city,
        state,
        zip_code,
        type,
        year_built,
        created_at,
        uploaded_at
    
    from {{ source('property_management', 'properties') }}
)

select * from properties