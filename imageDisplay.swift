/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct imageDisplay : Codable {
	let format : String?
	let width : Int?
	let height : Int?
	let filename : String?
	let id : Int?
	let author : String?
	let author_url : String?
	let post_url : String?

	enum CodingKeys: String, CodingKey {

		case format = "format"
		case width = "width"
		case height = "height"
		case filename = "filename"
		case id = "id"
		case author = "author"
		case author_url = "author_url"
		case post_url = "post_url"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		format = try values.decodeIfPresent(String.self, forKey: .format)
		width = try values.decodeIfPresent(Int.self, forKey: .width)
		height = try values.decodeIfPresent(Int.self, forKey: .height)
		filename = try values.decodeIfPresent(String.self, forKey: .filename)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		author = try values.decodeIfPresent(String.self, forKey: .author)
		author_url = try values.decodeIfPresent(String.self, forKey: .author_url)
		post_url = try values.decodeIfPresent(String.self, forKey: .post_url)
	}

}
