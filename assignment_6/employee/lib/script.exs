Code.require_file("employee1.ex", __DIR__)
nine_trai = Employee.new_employee(1000, "Ratchanon", "Traitiprat",:coder)
IO.inspect nine_trai
nine_trai_promoted = Employee.promote(nine_trai)
IO.inspect nine_trai_promoted
nine_trai_demoted = Employee.demote(nine_trai_promoted)
IO.inspect nine_trai_demoted
