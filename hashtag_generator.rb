# https://www.codewars.com/kata/52449b062fb80683ec000024
def generateHashtag(str)
  return false if str.empty? || str.length > 140
  str.split.map(&:capitalize).unshift("#").join
end
