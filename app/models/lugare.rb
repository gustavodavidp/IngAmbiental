class Lugare < ApplicationRecord
    
    def self.search(search)
        # Title is for the above case, the OP incorrectly had 'name'
        where("nombre ILIKE ? or descripcion ILIKE ?", "%#{search}%", "%#{search}%")
    end
end
