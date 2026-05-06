#use "core.ml";;

let expect condition = if not condition then failwith "fixture mismatch";;
let signal_case_1 = { demand = 55; capacity = 74; latency = 24; risk = 22; weight = 4 };;
expect (score signal_case_1 = 40);;
expect (classify signal_case_1 = "review");;
let signal_case_2 = { demand = 100; capacity = 102; latency = 24; risk = 7; weight = 9 };;
expect (score signal_case_2 = 238);;
expect (classify signal_case_2 = "accept");;
let signal_case_3 = { demand = 99; capacity = 97; latency = 17; risk = 24; weight = 12 };;
expect (score signal_case_3 = 196);;
expect (classify signal_case_3 = "accept");;

#use "review.ml";;
let domain_review = { signal = 48; slack = 24; drag = 27; confidence = 46 };;
expect (review_score domain_review = 85);;
expect (review_lane domain_review = "hold");;
