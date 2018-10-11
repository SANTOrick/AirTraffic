class Traffic
    attr_accessor :f_planes, :l_planes, :s_planes
    
    def initialize(des=3, s_planes=0, f_planes=0, l_planes=0)
        @f_planes = f_planes
        @l_planes = l_planes
        @s_planes = s_planes
        @des=des
        puts "
        --traffic.status to check all planes and airports status
        --traffic.capacity to change destination max. capacity
        --traffic.plane to create a new plane on the starting airport
        --traffic.stand_by to check the airplanes on flight
        --traffic.start to check the starting airport status
        --traffic.depart attemp to take off a plane
        --traffic.land attemp to landing a plane
        --traffic.destination  to check the starting destination airport status"
    end

    def plane()
        (@s_planes=s_planes+1)
    end

    def status()
        puts "Report on all flights and airport capacity.
        There are currently #{@s_planes} planes in the starting airport, waiting to depart.
        There are currently #{@f_planes} planes in flight, waiting to land.
        There are currently #{@l_planes} planes in the destination airport.
        The current capacity for the destination airport is #{@des} planes."
    end
        def capacity(val)
            if val > 0 then
            (@des = val)
            puts "The new limit for destination airport is #{@des} planes."
            end
        end


        def stand_by()
            if @f_planes == 0 then
            puts "There is no airplane flying at this time"
              elsif @f_planes == 1 then 
                puts "There is 1 airplane in flight."
              elsif @f_planes >=2 then 
                puts "There are #{f_planes} in flight"
              else
                puts "There is no airplane flying at this time"
            end
        end

        def land ()
            if @f_planes == 0
            puts "There`s no airplane waiting to land."
            elsif @l_planes < @des && @f_planes >= 1 then 
                (@f_planes=f_planes-1)
                (@l_planes=l_planes+1)
                puts "Flight Landed"
            elsif (@l_planes >= (@des)) then
                puts "Airport too busy"

            else
                "There`s no airplane waiting to land."
            end
        
        end


        def start ()
            if @s_planes == 1 then 
                puts "There is 1 airplane in this airport."
              elsif @s_planes >=2 then 
                puts "There are #{s_planes} airplanes in this airport."
              else
                puts "There is no airplane flying at this time"
            end
        end

        def depart (weather = rand(2) == 1? true : false )
            if @s_planes == 0 then
                puts "Airport`s runway is free"
            elsif @s_planes >= 1 && weather == true then 
                (@f_planes=f_planes+1)
                (@s_planes=s_planes-1)
                puts "Plane departed!"
            else
                puts "Rainy weather, cannot depart!"
            end
        end

    def destination()
      if @l_planes >= 1 then
        puts "There are #{@l_planes} in this airport"
      else
        puts "There are no planes in this airport"
      end
    end
      
  end
  
  