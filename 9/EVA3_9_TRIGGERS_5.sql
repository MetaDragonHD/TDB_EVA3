CREATE DEFINER=`root`@`localhost` TRIGGER `pruebas_AFTER_DELETE` AFTER DELETE ON `pruebas` FOR EACH ROW BEGIN
	insert into bitacora(id_modificado, tabla, accion) values (old.id, "Pruebas", "DELETE");
END