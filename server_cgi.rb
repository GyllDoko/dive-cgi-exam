require 'cgi'
cgi  = CGI.new

cgi.out("type" => "text/html", "charset" => "UTF-8") {
    
    get_all = cgi['all']
    string = ""
    data = get_all.split("-")
    data.each do |record|
      string += record
    end

    "<html>
    <head>
    </head>
      <body>
       <table>
       <tr>
        <th>Length</th>
        <th>Weight</th>
        <th>Quality</th>
        <th>Give For</th>
        <th>Date</th>
      </tr>
      #{string}
       </table>
        <a href='/'> Retour</a>
      </body>
    </html>"
    
    
    
  }