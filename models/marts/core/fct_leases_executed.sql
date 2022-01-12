with leases as (

    select * from {{ ref('stg_leases')}}

),

rental_applications as (

    select * from {{ ref('stg_rental_applications') }}

),

tenants as (

    select * from {{ ref('dim_tenants') }}

),

final as (

    select
        
        leases.lease_id,
        leases.unit_id,
        leases.completed,
        leases.start_date,
        leases.end_date,
        tenants.move_in_date,
        tenants.move_out_date,
        tenants.notice_date,
        tenants.bank_account_name,
        tenants.bank_account_number,
        tenants.routing_number,
        tenants.first_name,
        tenants.last_name,
        tenants.email_address,
        tenants.phone_number,
        rental_applications.rental_application_status,
        rental_applications.rental_application_deleted_at

    from leases

    left join tenants on leases.lease_id = tenants.lease_id
    left join rental_applications on leases.rental_application_id = rental_applications.rental_application_id

    where leases.completed = true

)

select * from final