defmodule Battery do
  @enforce_keys [:columnsList]
  defstruct id: 0, status: "idle", columnsList: [], floorRequestButtonsList: [], amountOfColumns: 0, amountOfFloors: 0, amountOfElevatorPerColumn: 0, amountOfBasements: 0
  
  def createColumn(amountOfColumns, amountOfFloors, amountOfElevators) do
    Enum.each(1..amountOfColumns, fn number ->
    
    struct(Column)
    opts = [ID: 1, amountOfColumns: 4, amountOfFloors: 60, amountOfElevatorPerColumn: 5, amountOfBasements: 6]
    column = struct(Column, opts)
    struct(column, unknown: "value")

    defaults = Battery.__struct__()
    columnsList = Map.get(defaults, :columnsList)

    i = columnsList++[column]
   
    IO.inspect i
    end)
  end
end

defmodule Column do
  defstruct id: 0, status: "online", servedFloors: [], isBasement: false, elevatorsList: [], callButtonsList: [], amountOfElevators: 0, amountOfFloors: 0
   
end

defmodule Elevator do
  defstruct id: 0, status: "idle", currentFloor: 0, direction: "idle", Door: [], floorRequestList: [], completedRequestsList: [], amountOfFloors: 0

end

defmodule Door do
  defstruct id: 0, status: "opened"

end

defmodule CallButton do
  defstruct id: 0, status: "idle", floor: 0, direction: "idle"

end

defmodule FloorRequestButtons do
  defstruct id: 0, status: "idle", floor: 0

end




struct(Battery)
opts = [ID: 1, amountOfColumns: 4, amountOfFloors: 60, amountOfElevatorPerColumn: 5, amountOfBasements: 6]
battery1 = struct(Battery, opts)
struct(battery1, unknown: "value")


Battery.createColumn(6, 20, 2)


IO.inspect battery1

IO.inspect battery1.columnsList