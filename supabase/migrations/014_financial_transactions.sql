create table financial_transactions (

    id uuid primary key default gen_random_uuid(),

    organization_id uuid references organizations(id) on delete cascade,

    transaction_type text not null,

    company_id uuid references companies(id),

    reference_type text,

    reference_id uuid,

    currency text default 'TRY',

    amount numeric not null,

    due_date date,

    transaction_date date not null,

    status text default 'open',

    notes text,

    created_at timestamptz default now()
);

create index idx_financial_transactions_company
on financial_transactions(company_id);

create index idx_financial_transactions_type
on financial_transactions(transaction_type);

create index idx_financial_transactions_status
on financial_transactions(status);
