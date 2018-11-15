module GreenButtonData
  module Parser
    class CostAdditionalDetailLastPeriod < SummaryMeasurement

      class ItemPeriod
        include SAXMachine

        element :'duration', class: Integer, as: :duration
        element :'start', class: Integer, as: :start
      end

      # ESPI Namespacing
      class ESPIItemPeriod
        include SAXMachine

        element :'espi:duration', class: Integer, as: :duration
        element :'espi:start', class: Integer, as: :start
      end

      # Special case for PG&E generic namespacing
      class NSItemPeriod
        include SAXMachine

        element :'ns0:duration', class: Integer, as: :duration
        element :'ns0:start', class: Integer, as: :start
      end

      element :note
      element :itemKind, class: Integer, as: :item_kind
      element :amount, class: Integer, as: :amount
      element :itemPeriod, class: ItemPeriod, as: :item_period

      # ESPI Namespacing
      element :'espi:note', as: :note
      element :'espi:itemKind', class: Integer, as: :item_kind
      element :'espi:itemPeriod', class: ESPIItemPeriod, as: :item_period

      # Special case for PG&E generic namespacing
      element :'ns0:note', as: :note
      element :'ns0:itemKind', class: Integer, as: :item_kind
      element :'ns0:itemPeriod', class: NSItemPeriod, as: :item_period

      # Special case for SCE generic namespacing
      element :'ns0:amount', class: Integer, as: :amount
    end
  end
end
