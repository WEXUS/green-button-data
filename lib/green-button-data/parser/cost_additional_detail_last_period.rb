module GreenButtonData
  module Parser
    class CostAdditionalDetailLastPeriod < SummaryMeasurement
      element :note
      element :itemKind, class: Integer, as: :item_kind
      element :amount, class: Integer, as: :amount
      element :itemPeriod, class: Interval, as: :item_period

      # ESPI Namespacing
      element :'espi:note', as: :note
      element :'espi:itemKind', class: Integer, as: :item_kind
      element :'espi:itemPeriod', class: Interval, as: :item_period

      # Special case for PG&E generic namespacing
      element :'ns0:note', as: :note
      element :'ns0:itemKind', class: Integer, as: :item_kind
      element :'ns0:itemPeriod', class: Interval, as: :item_period

      # Special case for SCE generic namespacing
      element :'ns0:amount', class: Integer, as: :amount
    end
  end
end