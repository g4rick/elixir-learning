defmodule WorkingWithMultipleProcesses do
  def send_parent(parent) do
    send(parent, "Boom, exit")
    exit("exit!!!")
    # raise RuntimeError, message: "bye"
  end

  def run do
    Process.flag(:trap_exit, true)
    spawn_link(WorkingWithMultipleProcesses, :send_parent, [self()])
    :timer.sleep(500)
    receive_messages()
  end

  def receive_messages do
    receive do
      msg ->
        IO.puts("#{inspect(msg)}")
        receive_messages()
      after 500 ->
        IO.puts("timeout")
    end
  end
end
