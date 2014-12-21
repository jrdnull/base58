defmodule Base58 do
  @alphabet ~c(123456789abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ)

  @doc """
  Encodes the given integer.
  """
  def encode(x), do: _encode(x, [])

  @doc """
  Decodes the given string.
  """
  def decode(enc), do: _decode(enc |> to_char_list, 0)

  defp _encode(0, []), do: [@alphabet |> hd] |> to_string
  defp _encode(0, acc), do: acc |> to_string
  defp _encode(x, acc) do
     _encode(div(x, 58), [Enum.at(@alphabet, rem(x, 58)) | acc])
  end

  defp _decode([], acc), do: acc
  defp _decode([c | cs], acc) do
    _decode(cs, (acc * 58) + Enum.find_index(@alphabet, &(&1 == c)))
  end
end
