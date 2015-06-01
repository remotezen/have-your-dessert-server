ThinkingSphinx::Index.define :post, :with => :active_record do
    # fields
     indexes title, :sortable => true
     indexes body, :sortable => true
     indexes category, :sortable => true
end
