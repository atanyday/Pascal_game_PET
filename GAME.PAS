Program Game;
uses Crt;
const
  CAT : String = 'cat';
  DOG : String = 'dog';

  LIGHT_GRAY: Integer = 7;
  GRAY: Integer = 8;
  DARK_BLUE: Integer = 3;
  WHITE: Integer = 15;
  GREEN: Integer = 10;
  LIGHT_BLUE: Integer = 11;


var
   user, pet, name, answer: string;
   steps, menuChoice, hungry, mood, toilet, hygiene, energy: integer;

procedure WriteGameOverHalt( message: String);
begin
    textcolor(12);
    writeln('');
    writeln('______________________________________________________');
    writeln('');
    writeln('!!! GAME OVER !!!');
    writeLn;
    writeln('Your record = ' ,steps);
    writeLn;

    writeln( message );
    writeln;
    writeln('______________________________________________________');
    readln;
    halt;
end;

procedure haltIfGameOver;
begin
     Textbackground(black);
     if hungry < 1 then WriteGameOverHalt('Next time do not forget to feed your ' + pet + ' !');
     if mood < 1 then WriteGameOverHalt(name + ' is too unhappy and need some time to forgive you!');
     if toilet < 1 then WriteGameOverHalt(name + ' made a poo on your bed and went for a walk alone!');
     if hygiene < 1 then WriteGameOverHalt(pet + ' smells like a shit!');
     if energy < 1 then WriteGameOverHalt('Your ' + pet + ' wants to sleep so much. Give it some time.');
end;
procedure givePetName;
begin
    textcolor(LIGHT_GRAY);
    writeln('');
    writeln('Give a name to your ',pet);
    textcolor(DARK_BLUE);
    readln(name);
end;
procedure changeState(funnyString: String; _toilet, _mood, _energy, _hungry, _hygiene: Integer);
begin
    clrscr;
    textcolor(yellow);
    writeln(funnyString);
    textcolor(GRAY);
    Write('(');
    if _toilet <> 0 then Write('toilet: ' , _toilet);
    if _mood <> 0 then Write('   mood: ', _mood);
    if _energy <> 0 then Write('   energy: ', _energy);
    if _hungry <> 0 then Write('   hungry: ', _hungry);
    if _hygiene <> 0 then Write('   hygiene: ' ,_hygiene);
    WriteLn(')');

    toilet := toilet + _toilet;
    mood := mood + _mood;
    energy := energy + _energy;
    hungry := hungry + _hungry;

end;
procedure maxStats(message: String);
begin
    clrscr;
    textcolor(yellow);
    writeLn(message);
end;

begin
     clrscr;
     Textbackground(0);

     textcolor(LIGHT_GRAY);
     writeln('Hi! What is your name?');
     textcolor(DARK_BLUE);
     readln(user);
     textcolor(LIGHT_GRAY);
     writeln('');
     writeln('Great, ' ,user, '! Now choose a pet: cat or dog?');
     textcolor(DARK_BLUE);
     readln(pet);

     if (pet <> CAT) and (pet <> DOG) then
     begin
        writeln('You want ',pet,'... Are you serious? You can choose only cat or dog');
        readln;
        exit
     end;

     givePetName;

     hungry := 3;
     mood := 3;
     toilet := 3;
     hygiene := 3;
     energy := 5;

     textcolor(DARK_BLUE); write('Press'); textcolor(WHITE); write(' [1] ');
     textcolor(DARK_BLUE); writeln('to feed your ' ,pet );
     textcolor(GRAY); write('* hungry'); textcolor(LIGHT_GRAY); write(' (+1) ');
     textcolor(GRAY); write('toilet, energy'); textcolor(LIGHT_GRAY); writeln(' (-1)');
     writeln('');
     textcolor(DARK_BLUE); write('Press'); textcolor(WHITE); write(' [2] ');
     textcolor(DARK_BLUE); writeln('to make ' ,name, ' more happy');
     textcolor(GRAY); write('* mood'); textcolor(LIGHT_GRAY); write(' (+1) ');
     textcolor(GRAY); write('energy'); textcolor(LIGHT_GRAY); writeln(' (-1)');
     writeln('');
     textcolor(DARK_BLUE); write('Press'); textcolor(WHITE); write(' [3] ');
     textcolor(DARK_BLUE); writeln('to avoid some dirty things');
     textcolor(GRAY); write('* toilet, mood'); textcolor(LIGHT_GRAY); write(' (+1) ');
     textcolor(GRAY); write('hungry, energy'); textcolor(LIGHT_GRAY); writeln(' (-1)');
     writeln('');
     textcolor(DARK_BLUE); write('Press'); textcolor(WHITE); write(' [4] ');
     textcolor(DARK_BLUE); writeln('to wash your ' ,pet );
     textcolor(GRAY); write('* hygiene'); textcolor(LIGHT_GRAY); write(' (+1) ');
     textcolor(GRAY); write('mood, energy'); textcolor(LIGHT_GRAY); writeln(' (-1)');
     writeln('');
     textcolor(DARK_BLUE); write('Press'); textcolor(WHITE); write(' [5] ');
     textcolor(DARK_BLUE); writeln('to send your pet to sleep' );
     textcolor(GRAY); write('* energy'); textcolor(LIGHT_GRAY); write(' (+2) ');
     textcolor(GRAY); write('hungry, toilet, hygiene, mood'); textcolor(LIGHT_GRAY); writeln(' (-1)');
     writeln('');
     textcolor(DARK_BLUE); write('Press'); textcolor(WHITE); write(' [6] ');
     textcolor(DARK_BLUE); writeln('to exit the game' );
     textcolor(LIGHT_GRAY); write('P.S. you will get'); textcolor(WHITE); write(' (+2) ');
     textcolor(LIGHT_GRAY); write('if hungry, mood, toilet or hygiene'); textcolor(WHITE); writeln(' = 1');

     while menuChoice < 7 do
     begin
          haltIfGameOver;
          steps := steps + 1;

          if pet = CAT then
          begin
               writeln('');
               textcolor(LIGHT_GRAY); write(' [1] hungry  : ',hungry);
               textcolor(GREEN); writeln('   ^ ^ '  ); textcolor(LIGHT_GRAY); write(' [2] mood    : ',mood);
               textcolor(GREEN); writeln(' =(^.^)= '); textcolor(LIGHT_GRAY); write(' [3] toilet  : ',toilet);
               textcolor(GREEN); writeln('    x    '); textcolor(LIGHT_GRAY); write(' [4] hygiene : ',hygiene);
               textcolor(GREEN); writeln('  /( )\  '); textcolor(LIGHT_GRAY); write(' [5] energy  : ',energy);
               textcolor(GREEN); writeln('   U U'   );
          end
          else if pet = DOG then
          begin
               writeln('');
               textcolor(LIGHT_GRAY); write(' [1] hungry  : ',hungry);
               textcolor(LIGHT_BLUE); writeln('  {} {}  ');   textcolor(LIGHT_GRAY); write(' [2] mood    : ',mood);
               textcolor(LIGHT_BLUE); writeln('  (^ ^)  ');   textcolor(LIGHT_GRAY); write(' [3] toilet  : ',toilet);
               textcolor(LIGHT_BLUE); writeln('   _V_   ');  textcolor(LIGHT_GRAY); write(' [4] hygiene : ',hygiene);
               textcolor(LIGHT_BLUE); writeln(' /|___|\ '); textcolor(LIGHT_GRAY); write(' [5] energy  : ',energy);
               textcolor(LIGHT_BLUE); writeln('   O O');
          end;
          textcolor(WHITE);
          readln(menuChoice);

          if menuChoice = 1 then
             case hungry of
               4: changeState ('You gave food to ' + name, -1, 0, -1, +1, 0);
               3: changeState ('Omnomnom', -1, 0, -1, +1, 0);
               2: changeState ('Mmmm tasty! Thank you', -1, 0, -1, +1, 0);
               1: changeState ('Yokarniy babay! '+user+'! Can you remember about me before I am so hungry that I am gonna die?!', -1, 0, -1, +2, 0);
               0: ;
               else maxStats(user + ' I do not want to be fat!!! Stop it!');
             end
          else if menuChoice = 2 then
             case mood of
               4: changeState ('You are playing with ' + name, 0, +1, -1, 0, 0);
               3: changeState ('It is so much fun for ' + name, 0, +1, -1, 0, 0);
               2: changeState ('Wooooohooooooo yeah baby!!! I like to play with you!', 0, +1, -1, 0, 0);
               1: changeState ('I am the most sad '+ pet +' in the world... Ok, lets play a bit', 0, +2, -1, 0, 0);
               0: ;
               else maxStats('Ow, you know, I am happy enough. Next time... ok? ^_^');
             end
          else if menuChoice = 3 then
             case toilet of
               4: changeState ('You are walking in the park with ' + name, 1, 1, -1, -1, 0);
               3: changeState ('You are walking near the lake', 1, 1, -1, -1, 0);
               2: changeState (user + ', you are just in time. I want to do some dirty things ;)', 1, 1, -1, -1, 0);
               1: changeState ('Thanks. Next time I will do it on your bed. Nothing personal.', 2, 1, -1, -1, 0);
               0: ;
               else maxStats('Thank you ' + user + ' but I do not want to the toilet');
             end
          else if menuChoice = 4 then
             case hygiene of
               4: changeState ('Oooow I am not so dirty.... okay...', 0, -1, -1, 0, +1);
               3: changeState ('I hate taking a bath ...', 0, -1, -1, 0, +1);
               2: changeState ('Perhaps you are right... I am a bit dirty', 0, -1, -1, 0, +1);
               1: changeState (user + 'I stinck... cooool XD', 0, -1, -1, 0, +1);
               0: ;
               else maxStats('I am super clean. Take your shampoo away from me');
             end
          else if menuChoice = 5 then
             case energy of
               4: changeState ('Zzz', -1, -1, +2, -1, 0);
               3: changeState ('woah... Zzz', -1, -1, +2, -1, 0);
               2: changeState ('Yeah, it is a good time to have a nap', -1, -1, +2, -1, 0);
               1: changeState ('I wanna sleep sooooo much... May I hug you, '+user+'? ... Zzz', -1, -1, +2, -1, 0);
               0: ;
               else maxStats('Sleep??? No no no, I am full of energy!');
             end
          else if menuChoice = 6 then
          begin
               textcolor(yellow);
               writeln('Are you sure you want to exit? Y/N');
               readln(answer);
               if upcase(answer) <> 'N' then exit;
          end;
     end;
end.
