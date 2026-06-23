create table customer_profiles (

    id uuid primary key default gen_random_uuid(),

    company_id uuid references companies(id) on delete cascade,

    customer_code text unique,

    segment text,

    sales_representative text,

    payment_terms text,

    due_days integer default 0,

    credit_limit numeric default 0,

    discount_rate numeric default 0,

    risk_status text default 'normal',

    is_active boolean default true,

    created_at timestamptz default now(),

    unique(company_id)
);

create index idx_customer_profiles_company
on customer_profiles(company_id);

create index idx_customer_profiles_segment
on customer_profiles(segment);

create index idx_customer_profiles_risk
on customer_profiles(risk_status);
