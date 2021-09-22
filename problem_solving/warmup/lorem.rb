class VendingItem
  attr_reader :column, :row, :cost_cents
  attr_accessor :remaining_quantity

  def initialize(arr)
    @column = arr[0]
    @row = arr[1]
    @cost_cents = arr[2]
    @remaining_quantity = arr[3]
  end
end

def solution(inventory, purchaseAttempts)
  items = inventory.keep_if { |i| i.size == 4 }.map { |i| VendingItem.new(i) }
  column_count = items.reduce(0) { |acc, item| [acc, item.column].max + 1 }
  row_count = items.reduce(0) { |acc, item| [acc, item.row].max + 1 }

  grid = Array.new(column_count)
  grid.fill(Array.new(row_count))
  items.each do |item|
    grid[item.column][item.row] = item
  end

  purchaseAttempts.each do |purchase_coordinate|
    purchase_column = purchase_coordinate[0]
    purchase_row = purchase_coordinate[1]
    next if grid.count <= purchase_column

    column = grid[purchase_column]
    next if column.nil? || (column.count <= purchase_row)

    item = column[purchase_row]
    item.remaining_quantity -= 1 if item.remaining_quantity > 0
  end

  items.reduce(0) { |acc, item| acc + (item.remaining_quantity * item.cost_cents) }
end

solution([[0, 1, 100, 2], [0, 2, 50, 1]], [[0, 1], [0, 1], [0, 0]])
