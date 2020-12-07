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

        if (mpr > 50 ) && ( mpr < 150) && (dioxidoazufre > 80 ) && (dioxidoazufre > 365 ) &6
            (monoxidocarb > 10000 ) && (monoxidocarb < 30000) && (dioxidonitrogeno > 100) && 
            (dioxidonitrogeno < 150) && (ozono > 150) && (ozono <230)
            return 1
        elsif ( mpr < 150) && (dioxidoazufre > 365 ) && (monoxidocarb < 30000) && 
            (dioxidonitrogeno < 150) && (ozono <230)
            return 2
        else
            return 3 
        end
    end
end
