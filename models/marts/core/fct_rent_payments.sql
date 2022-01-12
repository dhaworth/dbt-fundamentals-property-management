with leases as (

    select * from {{ ref('stg_leases')}}

),

tenants as (

    select * from {{ ref('dim_tenants') }}

),

units as (

    select * from {{ ref('stg_units') }}

),

transactions as (

    select * from {{ ref('stg_transactions') }}

),

final as (

    select
        
        transactions.transaction_type,
        transactions.transaction_amount,
        transactions.transaction_payer,
        transactions.transaction_payee

    from transactions

)

select * from final