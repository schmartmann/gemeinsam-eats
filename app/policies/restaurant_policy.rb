class RestaurantPolicy < ApplicationPolicy
    def create?
        user.admin? || user.restauranteur?
    end

    def update?
        record.restauranteur == user
    end

    def edit?
        update?
    end

    def destroy?
        update?
    end

    def permitted_attributes_for_create
        [
            :name,
            :phone,
            :street_address,
            :city,
            :state,
            :postal_code,
            :time_zone
        ]
    end
end