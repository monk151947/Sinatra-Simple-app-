require 'sinatra'
require 'haml'

get '/' do
haml :index
end
post '/' do
 city = params[:city].empty? ? nil : params[:city].to_i
 passenger = params[:passengers].empty? ? nil : params[:passengers]
 num = passenger.to_i
case city
when 1
"Please Pay #{1000 * num}      *** Thank you choosing our service Happy Journey *** "
when 2
"Please Pay  #{2000 * num} *** Thank you choosing our service Happy Journey *** "
when 3
"Please Pay  #{3000 * num}  *** Thank you choosing our service Happy Journey ***"
when 4
"Please Pay  #{4000 * num} *** Thank you choosing our service Happy Journey ***"
else
"Please Enter the Proper City Code"
end

end

__END__

@@ layout
%html
  %head
    %link(rel="stylesheet" href="https://raw.github.com/gist/2912653/")
    %link(rel="stylesheet" href="/css/style.css")
  %body
    .container
      #main
        .title Welcome To Flight Booking
        .p 1.Bangalore
        .p 2.Mumbai
        .p 3.Pune
        .p 4.Mangalore
        = yield


@@ index


%form{:action => "/", :method => "post"}
    %input{:type => "text", :name => "city", :placeholder => "City", :size => 20}
    %input{:type => "text", :name => "passengers", :placeholder => "passengers" ,:size =>20}
    %input{:type => "submit", :value => "Submit"}

