defmodule Sequence.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # 启动单一服务
    # {:ok, _pid} = Sequence.Supervisor.start_link(123)
    
    Sequence.Supervisor.start_link(Application.get_env(:sequence, :initial_number))
    # List all child processes to be supervised
    # children = [
    #   %{
    #     id: Sequence.Supervisor,
    #     start: {Sequence.Supervisor, :start_link, [Application.get_env(:sequence, :initial_number)]}
    #   }
    #   # Starts a worker by calling: Sequence.Worker.start_link(arg)
    #   # {Sequence.Worker, arg},
    # ]

    # # See https://hexdocs.pm/elixir/Supervisor.html
    # # for other strategies and supported options
    # opts = [strategy: :one_for_one, name: Sequence.Supervisor]
    # Supervisor.start_link(children, opts)
  end
end
