    select ticket_history.ticket_id as 'Id Ticket', 
        ticket.title as 'Nombre del Ticket', 
        ticket_state.name as 'Estado del Ticket',
        ticket_history.create_time as 'Fecha',
        ticket_history_type.name as 'Subtipo'  
        
    from ticket_history, 
        ticket_state,
        ticket, 
        ticket_history_type 
        
    where ticket_id = 227535 
        and ticket_history.ticket_id = ticket.id 
        and ticket_history.state_id = ticket_state.id 
        and ticket_history.history_type_id = ticket_history_type.id 
        
    group by ticket_state.name, 
            ticket_history.create_time, 
            ticket_history.history_type_id 
    order by ticket_history.create_time asc;