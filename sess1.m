% rand(zeilen,spalten): matrix of doubles between 0 and 1
% randi(max,zeilen,spalten): matrix of random integers between 0 and max
% randn(zeilen,spalten): random number of normal distribution 

% Logical (Boolean) True = 1, False = 0

% Man kann auch Worte definieren in '' t='Hello' t(2)=e

% verschiedene Datentypen in einem Array = Cell Arrays =
% c={'Hello',"Hallo",93}


% z=rand()
if z>0.5 disp ("Above Chance!"); elseif z == 0.5 disp ("50:50"); else disp ("Below Chance"); end
% bei rand wird erstmal immer nur eine Zahl zwischen 0 und 1 ausgewählt 
% ;end wichtig!!

% For-Loop 
for i = 1:10 
    j =i^2; 
end 
% ;end wichtig!!

a={0 1 3, 4 5 6}

for i = 1:10 
    j =i^2; end 

%% ursprünglicher for loop
for i =1:10
    j =i^2;
end 

%% neue for loop
j = zeros(1,10);
for i =1:10
    j(i) =i^2;
end 

%%
a=randi(10,10,20);


s=rand(10,20);
% kein max bedeutet iummer zwischen 0 und 1 also auch Dezimalzahlen

for i=1:200
    if s(i)>0.5
        a(i)=a(i);
    else 
        a(i)=-a(i);
    end 
end 
disp(a)

% bedeutet: 
    % for i=1:20     Wiederhole den folgenden Code 200 Mal (für jedes Element von a)
    % if s(i) > 0.5  Wenn das i-te Element von s größer als 0.5 ist ...
    % a(i) = a(i);   ... dann bleibt a(i) so, wie es ist.
    % else           ... sonst (wenn s(i) kleiner oder gleich 0.5 ist) ...
    % a(i) = -a(i);  ... mache a(i) negativ.
    % end            Ende der Wenn-Dann-Abfrage.
    % end            Ende der Schleife.

 % Hier einfach alle Zahlen, die die 10 mal 20 Matrix hat 

%% 2.Möglichkeit 

a=randi(10,10,20);

s=rand(10,20);


for i=1:10 %Zeilenindex
    for j =1:20 %Spaltenindex 
       if s(i,j) >0.5
        a(i,j)=-a(i);
       end 
    end 
end 
disp(a)

%% Aufgabe 3
% BDI Werte 

%Vekotor von 100 Zufallsszahlen zwichen 0 und 63 
b=randi([0,63],1,100)
%hier mit der [] damit 0 eingeschlossen wird 

%For Loop: neuer Vektor, der jedem Wert die entsprechende Kategorie gibt 
% 0-9: minimal, 10-18: mild, 19-29: moderate, 30-63:severe

%string erstellen um Namen speichern zu können
e=strings(1,100)
%Alternative wäre e=strings(size(b)) dann so lang wie unser b; kann aber
%wohl auch komplett wegelassen werden 


for i=1:100 %für alle folgenden 100 Werte des BDI
    if b(i) < 10 %alle b unter 10
        e(i) = 'minimal'; % Bezeichnung minimal (; speichert)
    elseif b(i)<19 %alle b unter 19 (ohne die unter 10 da das schon gespeichert wurde bz auch elseif bezieht sich dann auf alle anderen zahlen außer bis jetzt) 
        e(i) = 'mild'; %(= mild)
    elseif b(i)<30 %alle unter 30 außer die vorher gespeicherten 
        e(i)= 'moderate'; %=moderate
    else  %alle restlichen noch 
        e(i)='severe'; %=severe

    end %Ende if loop
end %Ende for loop
disp(e)%gib mir den Vektor e

%% Aufgabe 4 
clear
% wieder Aufgabe 3 mit Vektor aber von 0 bis 70. Alle über 63 sind abr dann
% nicht zulässig 

%a) alle Werte größer als 63 überspringen 
%b) bei Wert größer 63 Schleife verlassen und Fehlermedelung ausgeben 

%a)
z=randi([0,70],1,100)

for i=1:100 
    if z(i) < 10 
        e{i} = 'minimal'; 
    elseif z(i)<19  
        e{i} = 'mild'; 
    elseif z(i)<30 
        e{i}= 'moderate'; 
    elseif z(i)<=63  
        e{i}='severe'; 
    else 
        continue
    end 
end 
disp(e)

%% 
%b)
clear

z=randi([0,70],1,100)

for i=1:100 
    if z(i) < 10 
        e(i) = "minimal"; 
    elseif z(i)<19  
        e(i) = "mild"; 
    elseif z(i)<30 
        e(i)= "moderate"; 
    elseif z(i)<=63  
        e(i)="severe"; 
    else 
        disp("Error")
        break
    end 
end 
disp(e)
