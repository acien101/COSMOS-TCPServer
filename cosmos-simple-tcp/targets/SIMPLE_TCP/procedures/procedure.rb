# Script Runner test script
cmd("SIMPLE_TCP EXAMPLE")
wait_check("SIMPLE_TCP STATUS BOOL == 'FALSE'", 5)
