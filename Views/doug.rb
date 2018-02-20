






<form method="post" action="board">
	<% if grid1.upcase == 'X' || grid1.upcase == 'O' %>
	<input type="hidden" name="grid1" align="center" size="1" value= <%= grid1 %>>
	<%= grid1 %>
	<% end %>
	<% if grid1.upcase != 'X' && grid1.upcase != 'O' %>
	<input type="hidden" name="grid1" align="center" size="1" value= "">
	<input type="submit" name="grid1" align="center" size="1" value= "1">
    <% end %>