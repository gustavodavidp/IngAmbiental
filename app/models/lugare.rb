class Lugare < ApplicationRecord
    
    def self.search(search)
        # Title is for the above case, the OP incorrectly had 'name'
        where("nombre ILIKE ? or descripcion ILIKE ?", "%#{search}%", "%#{search}%")
    end

    def calculo
        mpr = Lugar.contaminates.where(nombre: "Material Particulado Respirable")
        dioxidoazufre = Lugar.contaminates.where(nombre: "Dioxido de Azufre")
        monoxidocarb = Lugar.contaminates.where(nombre: "Monoxido de Carbono")
        dioxidonitrogeno = Lugar.contaminates.where(nombre: "Dioxido de Nitrogeno")
        ozono = Lugar.contaminates.where(nombre: "Ozono")

        if (mpr > 50 ) && ( mpr < 150) && (dioxidoazufre > 80 ) && (dioxidoazufre > 365 ) &6
            (monoxidocarb > 10000 ) && (monoxidocarb < 30000) && (dioxidonitrogeno > 100) && 
            (dioxidonitrogeno < 150) && (ozono > 150) && (ozono <230)
            print("El nivel de polución es óptimo")
        elsif ( mpr < 150) && (dioxidoazufre > 365 ) && (monoxidocarb < 30000) && 
            (dioxidonitrogeno < 150) && (ozono <230)
            print("Peligro, el estado de calidad del aire puede ser perjudicial para su salud")
        end
    end
end
