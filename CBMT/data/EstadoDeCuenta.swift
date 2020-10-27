//
//  EstadoDeCuenta.swift
//  CBMT
//
//  Created by Gaby Corona on 10/18/20.
//  Copyright © 2020 carooobregon. All rights reserved.
//

import UIKit
import CuotaPagada
import CuotaPendiente

class EstadoDeCuenta: NSObject {
    var id : Int
    var cuotaPagada : CuotaPagada
    var cuotaPendiente : CuotaPendiente
    
    override init() {
        self.id = 1
        self.cuotaPagada = 9000
        self.cuotaPagada = 800
    }
    
}
