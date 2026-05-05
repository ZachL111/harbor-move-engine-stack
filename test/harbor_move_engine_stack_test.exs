defmodule HarborMoveEngineStackTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 56, capacity: 101, latency: 25, risk: 23, weight: 4}
    assert HarborMoveEngineStack.score(signal_case_1) == 37
    assert HarborMoveEngineStack.classify(signal_case_1) == "review"
    signal_case_2 = %{demand: 87, capacity: 73, latency: 13, risk: 7, weight: 5}
    assert HarborMoveEngineStack.score(signal_case_2) == 187
    assert HarborMoveEngineStack.classify(signal_case_2) == "accept"
    signal_case_3 = %{demand: 96, capacity: 77, latency: 16, risk: 8, weight: 13}
    assert HarborMoveEngineStack.score(signal_case_3) == 225
    assert HarborMoveEngineStack.classify(signal_case_3) == "accept"
  end
end
