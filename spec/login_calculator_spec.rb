# require 'C:\Users\Adam.Kaintz\RubymineProjects\login_calculator\spec\test.rb'
#
# describe LoginCalculator do
#     context "When testing the LoginCalculator class" do
#       it "should say print a nested hash on the screen where you count logins per year for each person" do
#
#         def rand_time
#           Time.at(rand * Time.now.to_i)
#         end
#
#         people = [[2, 'matayo'], [1, 'nico'], [0, 'angelo'], [3, 'luca']]
#
#         logins = { # ugly on purpose
#                    0 => [rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time],
#                    1 => [rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time],
#                    2 => [rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time],
#                    3 => [rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time, rand_time],
#         }
#
#         login_calculator = LoginCalculator.new(people, logins)
#         sorted_hashes = login_calculator.calculate
#         hash = { "matayo"=>{1973=>1, 1980=>1, 2010=>1, 2003=>1, 1976=>1, 2005=>1, 2011=>1, 1989=>1},
#                  "nico"=>{1976=>1, 1988=>1, 2005=>1, 1980=>1, 1983=>1, 1972=>2, 1987=>1},
#                  "angelo"=>{1982=>1, 2006=>1, 1988=>1, 1992=>2, 2016=>1, 1995=>2},
#                  "luca"=>{1992=>1, 1970=>1, 1972=>1, 1978=>1, 1976=>1, 2004=>1, 2009=>1, 2011=>1}
#         }
#         expect(sorted_hashes).to eq hash
#     end
#   end
# end
