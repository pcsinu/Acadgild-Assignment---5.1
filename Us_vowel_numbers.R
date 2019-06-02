state_names=rownames(USArrests)
vowels_state_name <- function(state_val) {
  namesplit_split <- strsplit(state_val, "")[[1]]
  all_vowes <- c('a','e','i','o','u','A','E','I','O','U')
  v_count <- 0
  for(c in namesplit_split)
  {
    if(c %in% all_vowes)
    {
      v_count <- v_count + 1
    }
  }
  
  vowel_in_name_is <- paste (state_val, v_count)
  return(vowel_in_name_is)
}

# print state
sapply(state_names, vowels_state_name)
