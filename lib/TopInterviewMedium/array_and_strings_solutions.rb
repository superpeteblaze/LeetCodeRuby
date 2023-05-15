# frozen_string_literal: true

# Array and String Solutions
class ArrayAndStringsSolutions
  # @param {Integer[]} nums
  # @return {Integer[][]}

  def two_sum(nums, target)
    hash = {}
    (0...nums.length).each do |i|
      current_value = nums[i]
      remainder = target - current_value
      remainder_index = hash[remainder]
      return [remainder_index, i] unless remainder_index.nil?

      hash[current_value] = i
    end
  end

  # rubocop:disable Metrics/MethodLength
  # rubocop:disable Metrics/AbcSize
  # rubocop:disable Metrics/CyclomaticComplexity
  # rubocop:disable Metrics/PerceivedComplexity
  def three_sum(nums)
    result = []
    nums.sort!
    (0...nums.length).each do |i|
      next if i > 0 && nums[i] == nums[i - 1]
      j = i + 1
      k = nums.length - 1
      while j < k
        if (nums[i] + nums[j] + nums[k]).zero?
          result << [nums[i], nums[j], nums[k]]
          j += 1
          j += 1 while j < k && nums[j] == nums[j - 1]
        elsif (nums[i] + nums[j] + nums[k]).negative?
          j += 1
        else
          k -= 1
        end
      end
    end
    result
  end

  # @param {Integer[][]} matrix
  # @return {Void} Do not return anything, modify matrix in-place instead.
  def set_zeroes(matrix)
    
  end
end
