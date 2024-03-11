
# employee1.ex
defmodule Employee do
  defstruct [:first_name, :last_name, :id_number, :salary, :job]

  def new_employee(id \\ 0, first_name \\ "", last_name \\ "", job \\ :none) do
    %Employee{
      id_number: id + 1,
      salary: 0.0,
      job: job,
      first_name: first_name,
      last_name: last_name
    }
  end

  def promote(employee) do
    %Employee{employee | job: promote_job(employee.job), salary: employee.salary + 2000.0}
  end

  def demote(employee) do
    %Employee{employee | job: demote_job(employee.job), salary: max(0.0, employee.salary - 2000.0)}
  end

  defp promote_job(:none), do: :coder
  defp promote_job(:coder), do: :designer
  defp promote_job(:designer), do: :manager
  defp promote_job(:manager), do: :ceo
  defp promote_job(:ceo), do: :ceo

  defp demote_job(:none), do: :none
  defp demote_job(:coder), do: :none
  defp demote_job(:designer), do: :coder
  defp demote_job(:manager), do: :designer
  defp demote_job(:ceo), do: :manager
end
