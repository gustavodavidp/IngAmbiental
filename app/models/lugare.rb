class Lugare < ApplicationRecord
    
    def self.search(search)
        # Title is for the above case, the OP incorrectly had 'name'
        where("nombre ILIKE ? or descripcion ILIKE ?", "%#{search}%", "%#{search}%")
    end

    def peligrosidad
        mpr = self.cont_v1
        dioxidoazufre = self.cont_v2
        monoxidocarb = self.cont_v3
        dioxidonitrogeno = self.cont_v4
        ozono = self.cont_v5

        if (mpr >= 355  ) && (dioxidoazufre >= 812.2 ) &6
            (monoxidocarb > 17800 ) && (dioxidonitrogeno > 1222) && 
            (ozono > 402)
            return 3
        elsif ( mpr < 150) && (dioxidoazufre < 365 ) && (monoxidocarb < 10000) && 
            (dioxidonitrogeno < 150) && (ozono <235)
            return 1
        else
            return 2 
        end
    end
end
