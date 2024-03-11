# script.exs

# Require the content of the Employee module without evaluating it
Code.require_file("employee1.ex", __DIR__)

# Now that the Employee module is loaded, create a new employee
nine_trai = Employee.new_employee(1000, "Ratchanon", "Traitiprat",:coder)
IO.inspect nine_trai

# Promote the employee and display the updated state
nine_trai_promoted = Employee.promote(nine_trai)
IO.inspect nine_trai_promoted

# Demote the employee and display the updated state
nine_trai_demoted = Employee.demote(nine_trai_promoted)
IO.inspect nine_trai_demoted
