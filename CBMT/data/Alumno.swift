//
//  Alumno.swift
//  CBMT
//
//  Created by Caro Obregon on 18/10/20.
//  Copyright © 2020 carooobregon. All rights reserved.
//

import UIKit
import Calificacion
import Materias

class Alumno: NSObject {
    var id : Int
    var fName : String
    var lName : String
    var dob : NSDate
    var grado : Int
    var nivel : String
    var maestra : String
    var email : String
    var genero : Bool
    var calificaciones : Calificacion
    var materias : Materias
    
    init(nombre: String){
        self.id = 1
        self.fName = "Gabriela"
        self.lName = "Corona Garza"
        self.grado = 3
        self.nivel = "Primaria"
        self.maestra = "Yolanda Martinez"
        self.email = "gabriela.corona03@gmail.com"
        self.genero = true
    }
    func obtenerPromedio( calificaciones: Calificacion){
        print("Obteniendo Promedio")
    }
}
