class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companys, through: :freebies

    def received_one?(item_name)

    end

    def give_away(dev, freebie)
        freebie.update(dev: dev)
    end
end
