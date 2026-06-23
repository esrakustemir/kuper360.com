create table payments (

    id uuid primary key default gen_random_uuid(),

    organization_id uuid references organizations(id) on delete cascade,

    company_id uuid references companies(id),

    financial_transaction_id uuid references financial_transactions(id),

    payment_type text not null,

    payment_method text,

    currency text default 'TRY',

    amount numeric not null,

    payment_date date not null,

    reference_no text,

    notes text,

    created_at timestamptz default now()
);

create index idx_payments_company
on payments(company_id);

create index idx_payments_transaction
on payments(financial_transaction_id);

create index idx_payments_date
on payments(payment_date);
