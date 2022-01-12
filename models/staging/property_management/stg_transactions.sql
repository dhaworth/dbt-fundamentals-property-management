with transactions as (

    select
        
        id as transaction_id,
        type as transaction_type,
        amount as transaction_amount,
        payer as transaction_payer,
        payee as transaction_payee,
        deleted_at,
        created_at,
        uploaded_at
    
    from {{ source('property_management', 'transactions') }}
)

select * from transactions