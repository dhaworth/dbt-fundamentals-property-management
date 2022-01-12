with transactions as (

    select
        
        id,
        type,
        amount,
        payer,
        payee,
        deleted_at,
        created_at,
        uploaded_at
    
    from {{ source('property_management', 'transactions') }}
)

select * from transactions