class ETL

  def self.transform(hash)
    @result = {}
    hash.each do |key, value|
      to_single_hash(value, key)
    end
    @result
  end

  private

    def self.to_single_hash(value, key)
      value.each do |val|
        @result[val.downcase] = key
      end
    end

end
