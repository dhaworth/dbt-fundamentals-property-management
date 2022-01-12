with vendors as (

    select
        
        id,
        contact_info,
        bank_account_id,
        created_at,
        uploaded_at
    
    from {{ source('property_management', 'vendors') }}
)

select * from vendors