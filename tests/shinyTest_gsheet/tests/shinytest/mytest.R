app <- ShinyDriver$new("../../")
app$snapshotInit("mytest")

app$setInputs(`first_link-gender_item-gender_item` = "F")
app$setInputs(`first_link-gender_item-submit` = "click")
app$snapshot()
app$setInputs(`first_link-first_simple-shiny_positive_text` = "Everything")
app$setInputs(`first_link-first_simple-other_langs` = "5")
app$setInputs(`first_link-first_simple-other_langs` = c("5", "16"))
app$setInputs(`first_link-first_simple-years_of_experience` = 3)
app$setInputs(`first_link-first_simple-questio_need` = "Yes")
app$setInputs(`first_link-first_simple-submit` = "click")
app$setInputs(update_values = "click")
app$snapshot()
app$setInputs(`second_link-seconnd_simple-questio_need` = "No")
app$setInputs(`second_link-seconnd_simple-submit` = "click")
app$setInputs(`second_link-with_default-submit` = "click")
app$setInputs(`second_link-with_default-test2` = "1")
app$setInputs(`second_link-with_default-test1` = "WHatever")
app$setInputs(`second_link-with_default-test3` = "2")
app$setInputs(`second_link-with_default-test5` = "3")
app$setInputs(`second_link-with_default-test4` = "First choice")
app$setInputs(`second_link-with_default-test4` = c("First choice", "Third choice"))
app$setInputs(`second_link-with_default-submit` = "click")
app$setInputs(`second_link-from_gsheet-submit` = "click")
app$setInputs(`second_link-from_gsheet-test1` = "Hehe")
app$setInputs(`second_link-from_gsheet-test3` = "Else")
app$setInputs(`second_link-from_gsheet-test4` = "1")
app$setInputs(`second_link-from_gsheet-test4` = c("1", "3"))
app$setInputs(`second_link-from_gsheet-test5` = "Something")
app$snapshot()
app$setInputs(`second_link-from_gsheet-submit` = "click")
app$setInputs(`second_link-gender_react-test1` = "Good")
app$setInputs(`second_link-gender_react-test2` = "Goob")
app$setInputs(`second_link-gender_react-test3` = "1")
app$setInputs(`second_link-gender_react-test3` = c("1", "5"))
app$setInputs(`second_link-gender_react-test3` = "1")
app$setInputs(`second_link-gender_react-test3` = character(0))
app$setInputs(`second_link-gender_react-submit` = "click")
app$setInputs(`second_link-gender_react-test3` = "6")
app$setInputs(`second_link-gender_react-test3` = c("6", "7"))
app$setInputs(`second_link-gender_react-test3` = c("6", "7", "4"))
app$setInputs(`second_link-gender_react-submit` = "click")
app$setInputs(get_df_first = "click")
app$setInputs(get_df_second = "click")
app$snapshot()
