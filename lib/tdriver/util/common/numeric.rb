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

# extend Ruby Numeric class functionality
class Numeric

  # TODO: document me
  def positive?

    self > 0

  end

  # TODO: document me  
  def non_negative?

    self >= 0

  end

  # TODO: document me  
  def non_positive?

    self <= 0  

  end

  # TODO: document me  
  def negative?

    self < 0

  end

  # TODO: document me
  def limit( minimum_value, maximum_value )

    value = self    

    value.min( minimum_value ).max( maximum_value )

  end

  # TODO: document me
  def max( value )

    if value.kind_of?( Numeric )

      self > value ? value : self

    else

      raise TypeError, 'wrong type %2 for value (expected Numeric)'

    end

  end

  # TODO: document me
  def min( value )

    if value.kind_of?( Numeric )

      self < value ? value : self

    else

      raise TypeError, 'wrong type %2 for value (expected Numeric)'

    end

  end

end
