colors = ["white","black","red","green","blue","silver","yellow"]
colors.each { |color| Color.create(name: color) }