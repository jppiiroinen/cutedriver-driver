############################################################################
## 
## Copyright (C) 2010 Nokia Corporation and/or its subsidiary(-ies). 
## All rights reserved. 
## Contact: Nokia Corporation (testabilitydriver@nokia.com) 
## 
## This file is part of Testability Driver. 
## 
## If you have questions regarding the use of this file, please contact 
## Nokia at testabilitydriver@nokia.com . 
## 
## This library is free software; you can redistribute it and/or 
## modify it under the terms of the GNU Lesser General Public 
## License version 2.1 as published by the Free Software Foundation 
## and appearing in the file LICENSE.LGPL included in the packaging 
## of this file. 
## 
############################################################################

module MobyUtil

	# This is template for tdriver custom errors
	class CustomError < StandardError; 

		def initialize( msg = nil )
		
			super( msg )

		end

	end

	# This error should be raised when referred parameter is not found
	class ParameterNotFoundError < CustomError; end

	# This error should be raised when parameter file parsing fails
	class ParameterFileParseError < CustomError; end

	# This error should be raised when parameter file parsing fails
	class ParameterXmlParseError < CustomError; end

	# This error should be raised when desired template was not found
	class TemplateNotFoundError < CustomError; end

	# This error should be raised when desired template was not found
	class TemplatesFileNotLoaded < CustomError; end

end # MobyUtil
