class ResourceType < ApplicationRecord
    has_many :resources

    def ResourceType.method_missing(method_name, *args)
        begin
            ResourceType.get method_name
        rescue 
            nil
        end
    end

    def ResourceType.get(name)
        ResourceType.where(name: name.to_s.upcase).first
    end
    
    ## Could treat more like a db-backed enum
    # def ResourceType.READING()
    #     ResourceType.get __method__
    ### OR as regular enum (no customization of desc via web portal if this way) 
    #  {name: "READING", description: "Tutorials, blog posts, articles, books, and general developer writings.", value: 0}
    # end

end