defmodule HarborMoveEngineStack.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 80, slack: 33, drag: 28, confidence: 94}
    assert HarborMoveEngineStack.DomainReview.score(item) == 203
    assert HarborMoveEngineStack.DomainReview.lane(item) == "ship"
  end
end
