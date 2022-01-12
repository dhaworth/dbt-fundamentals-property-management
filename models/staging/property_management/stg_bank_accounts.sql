with bank_accounts as (

    select

         id,
         name,
         bank_account_number,
         routing_number,
         created_at,
         uploaded_at  
    
    from {{ source('property_management', 'bank_accounts') }}
)

select * from bank_accounts