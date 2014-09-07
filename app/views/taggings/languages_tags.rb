 <div class="field">
      <h3>Tags</h3>
      <% Tag.all.each do |i| %>
      <%= check_box_tag "language[tag_ids][]", i.id, @language.tag_ids.include?(i.id), id: dom_id(i) %>
      <%= label_tag dom_id(i), i.name %><br>
      <% end %>
    </div>
