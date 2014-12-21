defmodule Base58Test do
  use ExUnit.Case

  test "encode" do
    assert Base58.encode(0) == "1"
    assert Base58.encode(57) == "Z"
    assert Base58.encode(1024) == "iE"
    assert Base58.encode(123456789) == "bUKpk"
  end

  test "decode" do
    assert Base58.decode("1") == 0
    assert Base58.decode("Z") == 57
    assert Base58.decode("iE") == 1024
    assert Base58.decode("bUKpk") == 123456789
  end
end
