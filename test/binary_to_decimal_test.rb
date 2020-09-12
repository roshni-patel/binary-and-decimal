require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/binary_to_decimal'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "binary to decimal" do
  it "From 10011001 to 153" do
    binary_array = [1, 0, 0, 1, 1, 0, 0, 1]
    expected_decimal = 153

    expect(binary_to_decimal(binary_array)).must_equal expected_decimal
  end

  it "From 00001101 to 13" do
    binary_array = [0, 0, 0, 0, 1, 1, 0, 1]
    expected_decimal = 13

    expect(binary_to_decimal(binary_array)).must_equal expected_decimal
  end

  it "From 10000000 to 128" do
    binary_array = [1, 0, 0, 0, 0, 0, 0, 0]
    expected_decimal = 128

    expect(binary_to_decimal(binary_array)).must_equal expected_decimal
  end

  it "From random binary to decimal" do
    binary_array = Array.new(8) { rand(0..1) }
    expected_decimal = binary_array.join.to_s.to_i(2)

    expect(binary_to_decimal(binary_array)).must_equal expected_decimal
  end
end


# Tests for optional decimal to binary 
describe "decimal to binary" do
  it "From 397 to 110001101" do
    decimal = 397
    expected_binary = [1, 1, 0, 0, 0, 1, 1, 0, 1]

    expect(decimal_to_binary(decimal)).must_equal expected_binary
  end

  it "From 770 to 1100000010" do
    decimal = 770
    expected_binary = [1, 1, 0, 0, 0, 0, 0, 0, 1, 0]

    expect(decimal_to_binary(decimal)).must_equal expected_binary
  end

  it "From 287 to 100011111" do
    decimal = 287
    expected_binary = [1, 0, 0, 0, 1, 1, 1, 1, 1]

    expect(decimal_to_binary(decimal)).must_equal expected_binary
  end
 end
