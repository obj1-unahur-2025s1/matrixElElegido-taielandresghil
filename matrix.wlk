object trinity {
    var energia = 100
    method energia() = energia
    method energia(nuevaEnergia) {
        energia = nuevaEnergia
    }
    method vitalidad() {
        return 0
    }
    method saltar() {
        return energia
    }
    method esElElegido() {
        return false
    }
}

object neo {
    var energia = 100
    method energia() = energia
    method energia(nuevaEnergia) {
        energia = nuevaEnergia
    }
    method saltar() {
        energia = energia / 2
    }
    method vitalidad() {
        return energia / 10
    }
    method esElElegido() {
        return true
    }
}

object morfeo {
    var energia = 100
    method energia() = energia
    method energia(nuevaEnergia) {
        energia = nuevaEnergia
    }
    method saltar() {
        if (energia > 0) {
            energia = 0
        }
        else {
            energia = 100
        }
        vitalidad = vitalidad - 1
    }
    var vitalidad = 8
    method vitalidad() = vitalidad
    method vitalidad(nuevaVitalidad) {
        vitalidad = nuevaVitalidad
    }
    method esElElegido() {
        return false
    }
}

object nave {
    const pasajeros = [neo, morfeo, trinity]
    method pasajeros() {
        return pasajeros
    }
    method cantPasajeros() = pasajeros.size()
    method masVitalidad() = pasajeros.max({e => e.vitalidad()})
    method estaEquilibradaVit() = pasajeros.any({e => e.vitalidad() < e.vitalidad() * 2})
    method estaElElegido() = pasajeros.any({e => e.esElElegido()})
    method chocar() = pasajeros.forEach({e => e.saltar()}) and pasajeros.removeAll(pasajeros)
    //Falta acelerar
}