defmodule MinesweeperApp do

  def read do
    # Reading from the text file
    file = "board.txt"
    contents = File.read!(file)
    File.close(file)
    contents
  end

  def get_board do
    contents = read()
    original_array = String.split(contents, "\n")
    List.delete_at(original_array, 0)
  end

  def get_size(option) do
    data_first_line = Enum.at(get_board(), 0)

    if option == "rows" do
      String.slice(data_first_line, 0..1)
    else
      String.slice(data_first_line, 1..2)
    end
  end

  def analyze do

    board = get_board()
    # number of rows and columns
    _rows = get_size("rows")
    _columns = get_size("cols")



    # positions with three movements
    # corners
    _y = 0
    x = 0

    board_first_row = Enum.at(board, x)
    len_board_first_row = String.length(board_first_row)

    first_row = String.codepoints(board_first_row)



    new_array = []
    Enum.each(0..len_board_first_row, fn(x) ->
    [new_array | [x]]
    end)

    # IO.puts("res #{res}")

    #array[x+1][y]
    #array[x+1][y+1]
    #array[x][y+1]



    # positions with five movements
    # center positions: first row, last row, first column and last column


    # positions with eight movements


    #rows_number = Enum.count(board)


    # FIRST ROW
    #*
    #*board_first_row_first_col = Enum.at(board_first_row, 0)
    #*board_first_row_last_col = Enum.at(board_first_row, 0)

    # LAST ROW
    #* board_last_row = Enum.at(board, -1)


    IO.puts(new_array)


  end
end

MinesweeperApp.analyze
