//
//  MovieGridDetailViewController.swift
//  Flix
//
//  Created by Boris Ofon on 9/18/22.
//

import UIKit

class MovieGridDetailViewController: UIViewController {
    @IBOutlet weak var largePicView: UIImageView!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var posterImgView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var movie : [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as! String
        synopsisLabel.text = movie["overview"] as! String
        
        let baseUrl = "https://image.tmdb.org/t/p/w500/"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        posterImgView.af.setImage(withURL: posterUrl!)
        
        let baseUrlTwo = "https://image.tmdb.org/t/p/w500/"
        let posterPathTwo = movie["backdrop_path"] as! String
        let posterUrlTwo = URL(string: baseUrlTwo + posterPathTwo)
        
        largePicView.af.setImage(withURL: posterUrlTwo!)
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
