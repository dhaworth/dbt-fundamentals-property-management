with payments as (
    
    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        amount/100 as payment_amount,
        created as created_at,
        status as payment_status

    from {{ source('stripe', 'payment') }}
)

select * from payments