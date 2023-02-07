
// composite images from url
import UIKit

// Read in an image from a url string
func imageFor(_ str: String) -> UIImage {
    let url = URL(string: str)
    let imgData = try? Data(contentsOf: url!)
    let uiImage = UIImage(data:imgData!)
    return uiImage!
}


// itp staff
let u2 = "https://i.ibb.co/QkWvC7g/1024.jpg"
let ui2 = imageFor(u2)

let sz = CGSize(width: 1024, height: 1024)
let renderer = UIGraphicsImageRenderer(size: sz)

let image = renderer.image { (context) in

    ui2.draw(in: CGRect(x: 0, y: 0, width: 1024, height: 1024))

}

image
