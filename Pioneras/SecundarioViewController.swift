//
//  SecundarioViewController.swift
//  Pioneras
//
//  Created by Máster Móviles on 31/10/2019.
//  Copyright © 2019 Máster Móviles. All rights reserved.
//

import UIKit

class SecundarioViewController: UIViewController {

    @IBOutlet weak var imagenPionera: UIImageView!
    @IBOutlet weak var nombrePionera: UILabel!
    @IBOutlet weak var textoPionera: UILabel!
    
    var nomFich : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(self.nomFich == "lovelace") {
            nombrePionera.text = "Ada Lovelace"
        }
        
        if(self.nomFich == "hopper") {
            nombrePionera.text = "Grace Hopper"
        }
        
        if(self.nomFich == "liskov") {
            nombrePionera.text = "Barbara Liskov"
        }
        
        cargarFicheros(de: nomFich)

        // Do any additional setup after loading the view.
    }
    
    func cargarFicheros(de filename : String){
        let imagen = UIImage(named: filename)
        imagenPionera.image = imagen
        
        if let url = Bundle.main.path(forResource: filename, ofType:"txt") {
            do {
                textoPionera.text = try String(contentsOfFile: url,encoding: String.Encoding.utf8)
            }catch {
                print("Error al leer el fichero de texto")
            }
        }
        
        
    }
    

}
