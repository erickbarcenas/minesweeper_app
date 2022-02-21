defmodule MinesweeperApp do

  def read do
    # Reading from the text file
    file = "board.txt"
    contents = File.read!(file)
    File.close(file)
    contents
  end


  def get_size(option) do
    contents = read()
    original_array = String.split(contents, "\n")
    data_first_line = Enum.at(original_array, 0)

    if option == "rows" do
      String.slice(data_first_line, 0..1)
    else
      String.slice(data_first_line, 1..2)
    end
  end

  #def get do
  #  contents = read()
  #  original_array = String.split(contents, "\n")
    #data_first_line = Enum.at(original_array, 0)
    #board = List.delete_at(original_array, 0)
    #board
  #end

  def analyze do
    # number of rows and columns
    rows = get_size("rows")
    #columns = get_size("cols")
    #rows_number = Enum.count(board)


    # FIRST ROW
    #*board_first_row = Enum.at(board, 0)
    #*board_first_row_first_col = Enum.at(board_first_row, 0)
    #*board_first_row_last_col = Enum.at(board_first_row, 0)

    # LAST ROW
    #* board_last_row = Enum.at(board, -1)

    IO.puts("Rows: #{rows}")
  end
end

MinesweeperApp.analyze
