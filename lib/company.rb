
module Company
  class Data

    # Data hash is a hash of the format:
    # {
    #   :company_name => "name",
    #   :registered_company_number => '12345A',
    #   :requested_at => '10/09/2011',
    #   :delphi => {
    #     :results => [
    #       {:month => 'April', :score => 45.2 },
    #       {:month => 'May', :score => 42.8 },
    #       {:month => 'June', :score => 51.5 }
    #     ]
    #   }
    # }
    def initialize(data_hash)
      @data_hash = data_hash
    end

    def name
      data_hash[:company_name]
    end

    def number
      data_hash[:registered_company_number]
    end

    def delphi_scores
      data_hash[:delphi][:results].map do |node|
        node[:score].to_i
      end
    end

  end
end