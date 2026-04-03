with 

source as (

    select * from {{ source('stripe', 'stripe_payments') }}

),

renamed as (

    select
        id,
        orderid,
        paymentmethod,
        status,
        amount,
        created

    from source

)

select * from renamed