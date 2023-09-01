<cfoutput>
  <form action="/contacts" method="get" class="tool-bar">
    <label for="serach">Search Term</label>
    <input id="search" type="search" name="q" value="#params.q#"/>
    <input type="submit" value="Search"/>
  </form>
</cfoutput>

<table>
  <thead>
    <tr>
      <th>First</th> <th>Last</th> <th>Phone</th> <th>Email</th>
    </tr>
  </thead>
  <tbody>
  <cfoutput query="contacts">
    <tr>
      <td>#first#</td>
      <td>#last#</td>
      <td>#phone#</td>
      <td>#email#</td>
      <td>
        <a href="/contacts/#id#">Edit</a>
        <a href="/contacts/#id#">View</a>
      </td>
    </tr>    
  </cfoutput>
  </tbody>
</table>
<p>
  <a href="/contacts/new">Add Contact</a>
</p>