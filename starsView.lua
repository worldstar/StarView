	local widget = require("widget")
	local starView = {}
	local starInitX = 100
	local starInitY = 0

	local starValue = 0
	local btnEditable = true

	function starView:new(x, y, initStarNumber, editable)
		starInitX = x
		starInitY = y
		btnEditable = editable

		function starIndicator(starNumber)
			starValue = starNumber
			print("starNumber: "..starNumber)
			if(starNumber == 0) then
				starView.star1.alpha = 0.4; starView.star2.alpha = 0.4; starView.star3.alpha = 0.4; starView.star4.alpha = 0.4; starView.star5.alpha = 0.4; 
			elseif(starNumber == 1) then
				starView.star1.alpha = 1; starView.star2.alpha = 0.4; starView.star3.alpha = 0.4; starView.star4.alpha = 0.4; starView.star5.alpha = 0.4; 
			elseif(starNumber == 2) then
				starView.star1.alpha = 1; starView.star2.alpha = 1; starView.star3.alpha = 0.4; starView.star4.alpha = 0.4; starView.star5.alpha = 0.4; 
			elseif(starNumber == 3) then
				starView.star1.alpha = 1; starView.star2.alpha = 1; starView.star3.alpha = 1; starView.star4.alpha = 0.4; starView.star5.alpha = 0.4; 
			elseif(starNumber == 4) then
				starView.star1.alpha = 1; starView.star2.alpha = 1; starView.star3.alpha = 1; starView.star4.alpha = 1; starView.star5.alpha = 0.4; 
			else
				starView.star1.alpha = 1; starView.star2.alpha = 1; starView.star3.alpha = 1; starView.star4.alpha = 1; starView.star5.alpha = 1; 
			end
		end			

		function onStarButtonRelease(event)

			local btId = event.target.id
			-- print(btId)
			if(btnEditable == false) then
				return 0
			end

			if(btId == "star1") then
				starIndicator(1)
			elseif(btId == "star2") then
				starIndicator(2)
			elseif(btId == "star3") then
				starIndicator(3)
			elseif(btId == "star4") then
				starIndicator(4)
			else
				starIndicator(5)
			end
		end			

		starView.star1 = widget.newButton{
			id = "star1",
			default = "star.png", 
			over = "star.png", 
	        left = starInitX + 0,
	        top = starInitY,		
	        width = 48, height = 48,
			-- label = "", 
			-- top=topBoundary,
			-- bottom=bottomBoundary,		
			-- yOffset = 30,
			onRelease = onStarButtonRelease
		}		
		starView.star1.alpha = 0.4

		starView.star2 = widget.newButton{
			id = "star2",
			default = "star.png", 
			over = "star.png", 
	        left = starInitX + 50,
	        top = starInitY,		
	        width = 48, height = 48,
			-- label = "", 
			-- top=topBoundary,
			-- bottom=bottomBoundary,		
			-- yOffset = 30,
			onRelease = onStarButtonRelease
		}		
		starView.star2.alpha = 0.4	

		starView.star3 = widget.newButton{
			id = "star3",
			default = "star.png", 
			over = "star.png", 
	        left = starInitX + 100,
	        top = starInitY,		
	        width = 48, height = 48,
			-- label = "", 
			-- top=topBoundary,
			-- bottom=bottomBoundary,		
			-- yOffset = 30,
			onRelease = onStarButtonRelease
		}		
		starView.star3.alpha = 0.4	

		starView.star4 = widget.newButton{
			id = "star4",
			default = "star.png", 
			over = "star.png", 
	        left = starInitX + 150,
	        top = starInitY,		
	        width = 48, height = 48,
			-- label = "", 
			-- top=topBoundary,
			-- bottom=bottomBoundary,		
			-- yOffset = 30,
			onRelease = onStarButtonRelease
		}		
		starView.star4.alpha = 0.4	

		starView.star5 = widget.newButton{
			id = "star5",
			default = "star.png", 
			over = "star.png", 
	        left = starInitX + 200,
	        top = starInitY,		
	        width = 48, height = 48,
			-- label = "", 
			-- top=topBoundary,
			-- bottom=bottomBoundary,		
			-- yOffset = 30,
			onRelease = onStarButtonRelease
		}		
		starView.star5.alpha = 0.4		

		starIndicator(initStarNumber)	
	end	

	function starView:getStarValue()
		return starValue
	end

	return starView