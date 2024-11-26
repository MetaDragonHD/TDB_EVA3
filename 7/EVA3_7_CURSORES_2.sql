delimiter |
CREATE PROCEDURE actualizar_rfc()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE p_id INT;
    DECLARE p_nombre VARCHAR(50);
    DECLARE p_apellido_pat VARCHAR(50);
    DECLARE p_apellido_mat VARCHAR(50);
    DECLARE p_fecha_nac DATE;
    DECLARE cur CURSOR FOR SELECT id, nombre, apellido_pat, apellido_mat, fecha_nac FROM personas;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO p_id, p_nombre, p_apellido_pat, p_apellido_mat, p_fecha_nac;
        IF done THEN
            LEAVE read_loop;
        END IF;

        UPDATE personas
        SET clave_rfc = generar_rfc(p_nombre, p_apellido_pat, p_apellido_mat, p_fecha_nac)
        WHERE id = p_id;
    END LOOP;

    CLOSE cur;
END |actualizar_rfc

DELIMITER ;