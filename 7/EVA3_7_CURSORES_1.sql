DELIMITER |

CREATE FUNCTION generar_rfc(nombre VARCHAR(50), apellido_pat VARCHAR(50), apellido_mat VARCHAR(50), fecha_nac DATE)
RETURNS VARCHAR(13)
DETERMINISTIC
BEGIN
    DECLARE rfc VARCHAR(13);
    SET rfc = UPPER(SUBSTRING(apellido_pat, 1, 2));
    SET rfc = CONCAT(rfc, IF(apellido_mat IS NULL OR apellido_mat = '', 'X', UPPER(SUBSTRING(apellido_mat, 1, 1))));
    SET rfc = CONCAT(rfc, UPPER(SUBSTRING(nombre, 1, 1)));
    SET rfc = CONCAT(rfc, DATE_FORMAT(fecha_nac, '%Y%m%d'));

    RETURN rfc;
END |

DELIMITER ;