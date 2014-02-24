require 'sinatra'
configure :production do
  require 'newrelic_rpm'
end

paroles = <<PAR.split "\n"
And now, the end is near 
And so I face the final curtain 
My friend, I'll say it clear 
I'll state my case, of which I'm certain 
I've lived a life that's full 
I traveled each and ev'ry highway 
And more, much more than this, I did it my way 

Regrets, I've had a few 
But then again, too few to mention 
I did what I had to do , I saw it through without exemption 
I planned each charted course, each careful step along the highway 
And more, much more than this, I did it my way 

Yes, there were times, I'm sure you knew 
When I bit off more than I could chew 
And through it all, when there was doubt 
I ate it up and spit it out 
I faced it all and I stood tall and did it my way 

I've loved, I've laughed and cried 
I've had my fill, my share of losing 
And now, as tears subside, I find it all so amusing 
To think I did all that 
And may I say, not in a shy way, 
"Oh, no, oh, no, not me, I did it my way" 

For what is a man, what has he got? 
If not himself, then he has naught 
The right to say the things he feels and not the words of one who kneels 
The record shows I took the blows and did it my way!
PAR

lyrics = <<LYR.split "\n"
Je me lève et je te bouscule 
Tu ne te réveilles pas comme d'habitude 
Sur toi je remonte le drap 
J'ai peur que tu aies froid comme d'habitude 
Ma main caresse tes cheveux 
Presque malgré moi comme d'habitude 
Mais toi tu me tournes le dos 
Comme d'habitude 

Alors je m'habille très vite 
Je sors de la chambre comme d'habitude 
Tout seul je bois mon café 
Je suis en retard comme d'habitude 
Sans bruit je quitte la maison 
Tout est gris dehors comme d'habitude 
J'ai froid, je relève mon col 
Comme d'habitude 

Comme d'habitude, toute la journée 
Je vais jouer à faire semblant 
Comme d'habitude je vais sourire 
Comme d'habitude je vais même rire 
Comme d'habitude, enfin je vais vivre 
Comme d'habitude 

Et puis le jour s'en ira 
Moi je reviendrai comme d'habitude 
Toi, tu seras sortie 
Pas encore rentrée comme d'habitude 
Tout seul j'irai me coucher 
Dans ce grand lit froid comme d'habitude 
Mes larmes, je les cacherai 
Comme d'habitude 

Comme d'habitude, même la nuit 
Je vais jouer à faire semblant 
Comme d'habitude tu rentreras 
Comme d'habitude je t'attendrai 
Comme d'habitude tu me souriras 
Comme d'habitude 

Comme d'habitude tu te déshabilleras 
Comme d'habitude tu te coucheras 
Comme d'habitude on s'embrassera 
Comme d'habitude 

Comme d'habitude on fera semblant 
Comme d'habitude on fera l'amour 
Comme d'habitude on fera semblant
LYR

get '/' do
  p = rand(2) == 0 ? paroles : lyrics
  ind = rand p.length-1
  "<p style='margin-top:140px;text-align:center'>" + p[ind] + "<br/>" + p[ind+1] + "</p>"
end

