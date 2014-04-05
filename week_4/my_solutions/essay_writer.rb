def essay_writer(title, person, date, thesis_statment, pronoun,city)
  template1 = "pronoun is a great man.his full name is person.pronoun has done many things. pronoun was born on date in city.pronoun has won many awards and done many things for.his main achievement is."
  
   #template1.split(" ")

   if pronoun == 'she'
   	template1.gsub!("man","woman")
   	template1.gsub!("his","her")
end

   template1.gsub!("pronoun",pronoun)
    template1.gsub!("title",title)
     template1.gsub!("date",date)
       template1.gsub!("person",person)
      template1.gsub!("thesis_statment",thesis_statment)
      template1.gsub!("city",city)

 new = template1.split(".")

 new.map!(&:capitalize)
 new.join(".")
  
  # for i in 0.. template1.length-1
  
  
  
  # if (template1[i-1].include?(".") && template1[i]) == pronoun) 
      
  
  # template1.gsub! ("pronoun",pronoun.capitalize!)
  # else template1.gsub! ("pronoun",pronoun)
      
  # end
 # template1.gsub! 'date' #{input[date]}
  # end
   
   
end
