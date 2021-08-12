import UIKit

// URL

let urlString = "https://www.google.com/search?q=swift&rlz=1C5CHFA_enKR961KR961&sxsrf=ALeKk01Z2VphVolobVWFdSFq0-Yzkm5OPQ%3A1628237631323&ei=P-8MYb-fE4KmmAXwpJXIAw&oq=swift&gs_lcp=Cgdnd3Mtd2l6EAMyBAgjECcyBAgjECcyBAgjECcyBAgAEEMyCggAELEDEIMBEEMyCggAELEDEIMBEEMyBAgAEEMyCwgAEIAEELEDEIMBMgsIABCABBCxAxCDATIKCAAQgAQQhwIQFDoICAAQgAQQsQM6BQgAEIAEOgcIABCABBAKOhAIABCABBCHAhCxAxCDARAUOgcIABCxAxBDSgQIQRgAUOUEWJ0KYOEKaABwAngAgAFoiAHfA5IBAzMuMpgBAKABAcABAQ&sclient=gws-wiz&ved=0ahUKEwj_uv_s-ZvyAhUCE6YKHXBSBTkQ4dUDCA4&uact=5"
let url = URL(string: urlString)

url?.absoluteString
url?.scheme //어떤 방식으로 하고 있는지
url?.host
url?.path
url?.query
url?.baseURL


let baseURL = URL(string: "https://www.google.com")
let relativeURL = URL(string:  "search?q=swift&rlz=1C5CHFA_enKR961KR961&sxsrf=ALeKk01Z2VphVolobVWFdSFq0-Yzkm5OPQ%3A1628237631323&ei=P-8MYb-fE4KmmAXwpJXIAw&oq=swift&gs_lcp=Cgdnd3Mtd2l6EAMyBAgjECcyBAgjECcyBAgjECcyBAgAEEMyCggAELEDEIMBEEMyCggAELEDEIMBEEMyBAgAEEMyCwgAEIAEELEDEIMBMgsIABCABBCxAxCDATIKCAAQgAQQhwIQFDoICAAQgAQQsQM6BQgAEIAEOgcIABCABBAKOhAIABCABBCHAhCxAxCDARAUOgcIABCxAxBDSgQIQRgAUOUEWJ0KYOEKaABwAngAgAFoiAHfA5IBAzMuMpgBAKABAcABAQ&sclient=gws-wiz&ved=0ahUKEwj_uv_s-ZvyAhUCE6YKHXBSBTkQ4dUDCA4&uact=5")

relativeURL?.absoluteString
relativeURL?.scheme
relativeURL?.host
relativeURL?.path
relativeURL?.query
relativeURL?.baseURL



// URLComponents

var urlComponents = URLComponents(string: "https://www.google.com/search?")
let mediaQuery = URLQueryItem(name: "search", value: "swift")
urlComponents?.queryItems?.append(mediaQuery)

urlComponents?.url
urlComponents?.string
urlComponents?.queryItems
