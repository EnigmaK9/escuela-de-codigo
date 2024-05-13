delimiter //
create trigger trigger_check_nota_before_update
before update on alumnos
for each row
begin
    if new.nota < 0 then
        set new.nota = 0;
    elseif new.nota > 10 then
        set new.nota = 10;
    end if;
end;
//
delimiter ;

