with tenants as (

    select * from {{ ref('stg_tenants')}}

),

bank_accounts as (

    select * from {{ ref('stg_bank_accounts') }}

),

contact_infos as (

    select * from {{ ref('stg_contact_infos') }}

),

final as (

    select
        
        tenants.lease_id,
        tenants.move_in_date,
        tenants.move_out_date,
        tenants.notice_date,
        bank_accounts.name as bank_account_name,
        bank_accounts.bank_account_number,
        bank_accounts.routing_number,
        contact_infos.first_name,
        contact_infos.last_name,
        contact_infos.email_address,
        contact_infos.phone_number

    from tenants

    left join bank_accounts on tenants.bank_account_id = bank_accounts.bank_account_id
    left join contact_infos on tenants.contact_info_id = contact_infos.contact_info_id

)

select * from final