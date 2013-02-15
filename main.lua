	------------------
	-- Rating Objects
	------------------		
	--Include the starView library
	local starsView = require("starsView")
	
	--Initialize the starView object. The parameters are the x, y, initial star numbers, and is editable of the starView.
	starsView:new(200, 150, 4, true)

	--Get the result
	local ratingValue = starsView.getStarValue()
	print(ratingValue)