//
//  IntroCalificacionesViewController.swift
//  CBMT
//
//  Created by Caro Obregon on 18/10/20.
//  Copyright © 2020 carooobregon. All rights reserved.
//

import UIKit

class AlCalificacionesViewCell: UITableViewCell {
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var alNombre: UILabel!
    @IBOutlet weak var alGrado: UILabel!
    @IBOutlet weak var alMaestra: UILabel!
    
}

class IntroCalificacionesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var listaAlumnos = [
        Alumno(nombre: "Gaby Corona"),
        Alumno(nombre: "Caro Obregon"),
        Alumno(nombre: "Lucia Cantu")
    ]
    
    let cellColors = ["222B45","AC4040","FFC700", "11A05B", "FFB110"];
    var selectedIndexPath: NSIndexPath = NSIndexPath()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//    MARK: - Metodos de protocolo Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaAlumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! AlCalificacionesViewCell
        if(listaAlumnos[indexPath.row].genero){
            celda.imagen.image = UIImage(named: "girlpng")
        }
        celda.alNombre.text = listaAlumnos[indexPath.row].nombre
        celda.alGrado.text = String(listaAlumnos[indexPath.row].grado) + "° de "  + listaAlumnos[indexPath.row].nivel
        celda.alMaestra.text = listaAlumnos[indexPath.row].maestra
        celda.contentView.backgroundColor = hexStringToUIColor(hex: cellColors[indexPath.row % cellColors.count])

        return celda
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
    
    // MARK: Helper methods
    
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }

        if ((cString.count) != 6) {
            return UIColor.gray
        }

        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)

        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "showCalif", sender: self)
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if ("showCalif" == segue.identifier){
            let indexPath = tableView.indexPathForSelectedRow
            let vistaDetalle  = segue.destination as! CalificacionesViewController
            vistaDetalle.currAlumno = listaAlumnos[indexPath!.row]
        }
    }
    
//    func performSegue(withIdentifier identifier: String, sender: IndexPath) {
//        let vistaDetalle  = segue.destination as! CalificacionesViewController
//        vistaDetalle.currAlumno = listaAlumnos[sender.row]
//    }


}
