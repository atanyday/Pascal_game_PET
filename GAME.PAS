Program Game;
uses Crt;


var user, pet, cat, dog, name, answer: string;
steps, number, hungry, mood, toilet, hygiene, energy: integer;

procedure gameOver;
begin
     Textbackground(black);
     if hungry < 1 then
     begin
          textcolor(12);
          writeln('');
          writeln('______________________________________________________');
          writeln('');
          writeln('GAME OVER! Next time do not forget to feed your ' ,pet);
          writeln('Your record = ' ,steps);
          readln;
          halt;
     end;
     if mood < 1 then
     begin
          textcolor(12);
          writeln('');
          writeln('____________________________________________________________________');
          writeln('');
          writeln('GAME OVER! ',name, ' is too unhappy and need some time to forgive you');
          writeln('Your record = ' ,steps);
          readln;
          halt;
     end;
     if toilet < 1 then
     begin
          textcolor(12);
          writeln('');
          writeln('____________________________________________________________________');
          writeln('');
          writeln('GAME OVER! ',name, ' made a poo on your bed and went for a walk alone');
          writeln('Your record = ' ,steps);
          readln;
          halt;
     end;
     if hygiene < 1 then
     begin
          textcolor(12);
          writeln('');
          writeln('____________________________________________________________________');
          writeln('');
          writeln('GAME OVER! You ' ,pet,' smells like a shit!');
          writeln('Your record = ' ,steps);
          readln;
          halt;
     end;
     if energy < 1 then
     begin
          textcolor(12);
          writeln('');
          writeln('__________________________________________________________________');
          writeln('');
          writeln('GAME OVER. Your ' ,pet, ' wants to sleep so much. Give it some time.');
          writeln('Your record = ' ,steps);
          readln;
          halt;
     end;
end;


begin
     Textbackground(0);
     cat := 'cat';
     dog := 'dog';

     textcolor(7);
     writeln('Hi! What is your name?');

     textcolor(3);
     readln(user);

     textcolor(7);
     writeln('');
     writeln('Great, ' ,user, '! Now choose a pet: cat or dog?');

     textcolor(3);
     readln(pet);

     if pet = cat then
     begin
        textcolor(7);
        writeln('');
        writeln('Give a name to your ' ,pet);
        textcolor(3);
        readln(name);
        readln;
     end

     else if pet = dog then
     begin
        textcolor(7);
        writeln('');
        writeln('Give a name to your ' ,pet);
        textcolor(3);
        readln(name);
     end

     else
     begin
        writeln('You want ' ,pet, '... Are you serious? You can choose only cat or dog');
        readln;
        exit
     end;

     hungry := 3;
     mood := 3;
     toilet := 3;
     hygiene := 3;
     energy := 5;


     textcolor(3); write('Press'); textcolor(15); write(' [1] ');
     textcolor(3); writeln('to feed your ' ,pet );
     textcolor(8); write('* hungry'); textcolor(7); write(' (+1) ');
     textcolor(8); write('toilet, energy'); textcolor(7); writeln(' (-1)');
     writeln('');
     textcolor(3); write('Press'); textcolor(15); write(' [2] ');
     textcolor(3); writeln('to make ' ,name, ' more happy');
     textcolor(8); write('* mood'); textcolor(7); write(' (+1) ');
     textcolor(8); write('energy'); textcolor(7); writeln(' (-1)');
     writeln('');
     textcolor(3); write('Press'); textcolor(15); write(' [3] ');
     textcolor(3); writeln('to avoid some dirty things');
     textcolor(8); write('* toilet, mood'); textcolor(7); write(' (+1) ');
     textcolor(8); write('hungry, energy'); textcolor(7); writeln(' (-1)');
     writeln('');
     textcolor(3); write('Press'); textcolor(15); write(' [4] ');
     textcolor(3); writeln('to wash your ' ,pet );
     textcolor(8); write('* hygiene'); textcolor(7); write(' (+1) ');
     textcolor(8); write('mood, energy'); textcolor(7); writeln(' (-1)');
     writeln('');
     textcolor(3); write('Press'); textcolor(15); write(' [5] ');
     textcolor(3); writeln('to send your pet to sleep' );
     textcolor(8); write('* energy'); textcolor(7); write(' (+2) ');
     textcolor(8); write('hungry, toilet, hygiene, mood'); textcolor(7); writeln(' (-1)');
     writeln('');
     textcolor(3); write('Press'); textcolor(15); write(' [6] ');
     textcolor(3); writeln('to exit the game' );
     textcolor(7); write('P.S. you will get'); textcolor(15); write(' (+2) ');
     textcolor(7); write('if hungry, mood, toilet or hygiene'); textcolor(15); writeln(' = 1');


     while number < 7 do
     begin

          gameover;

          steps := steps + 1;

          if pet = cat then
          begin
               writeln('');
               textcolor(7); write(' [1] hungry  : ',hungry);
               textcolor(10); writeln('   ^ ^ '  ); textcolor(7); write(' [2] mood    : ',mood);
               textcolor(10); writeln(' =(^.^)= '); textcolor(7); write(' [3] toilet  : ',toilet);
               textcolor(10); writeln('    x    '); textcolor(7); write(' [4] hygiene : ',hygiene);
               textcolor(10); writeln('  /( )\  '); textcolor(7); write(' [5] energy  : ',energy);
               textcolor(10); writeln('   U U'   );
          end
          else if pet = dog then
          begin
               writeln('');
               textcolor(7); write(' [1] hungry  : ',hungry);
               textcolor(11); writeln('  {} {}  ');   textcolor(7); write(' [2] mood    : ',mood);
               textcolor(11); writeln('  (^ ^)  ');   textcolor(7); write(' [3] toilet  : ',toilet);
               textcolor(11); writeln('   _V_   ');  textcolor(7); write(' [4] hygiene : ',hygiene);
               textcolor(11); writeln(' /|___|\ '); textcolor(7); write(' [5] energy  : ',energy);
               textcolor(11); writeln('   O O');
          end;

          textcolor(15);
          readln(number);

          if number = 1 then
          begin
               if hungry >= 5 then
               begin
                 textcolor(yellow);
                 writeln(user, ' I do not want to be fat!!! Stop it!');
                 Continue;
               end;
               if hungry = 4 then
               begin
                 textcolor(yellow);
                 writeln('You gave food to ' ,name);
                 textcolor(8);
                 writeln('');
                 writeln('(hungry + 1, toilet - 1, energy -1)');
                 hungry := hungry + 1;
                 toilet := toilet - 1;
                 energy := energy -1;
                 Continue;
               end;
               if hungry = 3 then
               begin
                 textcolor(yellow);
                 writeln('Omnomnom');
                 textcolor(8);
                 writeln('');
                 writeln('(hungry + 1, toilet - 1, energy -1)');
                 hungry := hungry + 1;
                 toilet := toilet - 1;
                 energy := energy -1;
                 Continue;
               end;
               if hungry = 2 then
               begin
                 textcolor(yellow);
                 writeln('Mmmm tasty! Thak you, ' ,user);
                 textcolor(8);
                 writeln('');
                 writeln('(hungry + 1, toilet - 1, energy -1)');
                 hungry := hungry + 1;
                 toilet := toilet - 1;
                 energy := energy -1;
                 Continue;
               end;
               if hungry = 1 then
               begin
                 textcolor(yellow);
                 writeln('Yokarniy babay! ' ,user, '! Can you remember about me before I am so hungry that I am gonna die?!');
                 textcolor(8);
                 writeln('');
                 writeln('(hungry + 2, toilet - 1, mood - 1, energy -1)');
                 hungry := hungry + 2;
                 toilet := toilet - 1;
                 energy := energy -1;
                 Continue;
               end;
          end
          else if number = 2 then
          begin
               if mood >= 5 then
               begin
                 textcolor(yellow);
                 writeln('Ow, you know, I am happy enough. Next time... ok? ^_^');
                 Continue;
               end;
               if mood = 4 then
               begin
                 textcolor(yellow);
                 writeln('You are playing with ' ,name);
                 textcolor(8);
                 writeln('');
                 writeln('(mood + 1, energy - 1)');
                 mood := mood + 1;
                 energy := energy - 1;
                 Continue;
               end;
               if mood = 3 then
               begin
                 textcolor(yellow);
                 writeln('It is so much fun for ' ,name);
                 textcolor(8);
                 writeln('');
                 writeln('(mood + 1, energy - 1)');
                 mood := mood + 1;
                 energy := energy - 1;
                 Continue;
               end;
               if mood = 2 then
               begin
                 textcolor(yellow);
                 writeln('Wooooohooooooo yeah baby!!! I like to play with you!');
                 textcolor(8);
                 writeln('');
                 writeln('(mood + 1, energy - 1)');
                 mood := mood + 1;
                 energy := energy - 1;
                 Continue;
               end;
               if mood = 1 then
               begin
                 textcolor(yellow);
                 writeln('I am the most sad ' ,pet, ' in the world... Ok, lets play a bit');
                 textcolor(8);
                 writeln('');
                 writeln('(mood + 2, energy - 1, toilet - 1)');
                 mood := mood + 2;
                 energy := energy - 1;
                 Continue;
               end;
          end
          else if number = 3 then
          begin
               if toilet >= 5 then
               begin
                 textcolor(yellow);
                 writeln('Thank you ' ,user, ' but I do not want to the toilet');
                 Continue;
               end;
               if toilet = 4 then
               begin
                 textcolor(yellow);
                 writeln('You are walking in the park with ' ,name);
                 textcolor(8);
                 writeln('');
                 writeln('(toilet + 1, mood + 1, energy - 1, hungry - 1)');
                 toilet := toilet + 1;
                 mood := mood + 1;
                 energy := energy - 1;
                 hungry := hungry - 1;
                 Continue;
               end;
               if toilet = 3 then
               begin
                 textcolor(yellow);
                 writeln('You are walking near the lake');
                 textcolor(8);
                 writeln('');
                 writeln('(toilet + 1, mood + 1; energy - 1, hungry - 1)');
                 toilet := toilet + 1;
                 mood := mood + 1;
                 energy := energy - 1;
                 hungry := hungry - 1;
                 Continue;
               end;
               if toilet = 2 then
               begin
                 textcolor(yellow);
                 writeln(user, ' You are just in time. I want to do some dirty things ;)');
                 textcolor(8);
                 writeln('');
                 writeln('(toilet + 1, mood + 1; energy - 1, hungry - 1)');
                 toilet := toilet + 1;
                 mood := mood + 1;
                 energy := energy - 1;
                 hungry := hungry - 1;
                 Continue;
               end;
               if toilet = 1 then
               begin
                 textcolor(yellow);
                 writeln('Thanks. Next time I will do it on your bed. Nothing personal.');
                 textcolor(8);
                 writeln('');
                 writeln('(toilet + 2, mood + 1; energy - 1, hungry - 1)');
                 toilet := toilet + 2;
                 mood := mood + 1;
                 energy := energy - 1;
                 hungry := hungry - 1;
                 Continue;
               end;
          end
          else if number = 4 then
          begin
               if hygiene >= 5 then
               begin
                 textcolor(yellow);
                 writeln('I am super clean. Take your shampoo away from me');
                 Continue;
               end;
               if hygiene = 4 then
               begin
                 textcolor(yellow);
                 writeln('Oooow I am not so dirty.... okay...');
                 textcolor(8);
                 writeln('');
                 writeln('(hygiene + 1, mood - 1, energy - 1)');
                 hygiene := hygiene + 1;
                 mood := mood - 1;
                 energy := energy -1;
                 Continue;
               end;
               if hygiene = 3 then
               begin
                 textcolor(yellow);
                 writeln('I hate it...');
                 textcolor(8);
                 writeln('');
                 writeln('(hygiene + 1, mood - 1, energy - 1)');
                 hygiene := hygiene + 1;
                 mood := mood - 1;
                 energy := energy -1;
                 Continue;
               end;
               if hygiene = 2 then
               begin
                 textcolor(yellow);
                 writeln('Perhaps you are right... I am a bit dirty');
                 textcolor(8);
                 writeln('');
                 writeln('(hygiene + 1, mood - 1, energy - 1)');
                 hygiene := hygiene + 1;
                 mood := mood - 1;
                 energy := energy -1;
                 Continue;
               end;
               if hygiene = 1 then
               begin
                 textcolor(yellow);
                 writeln(user, ' I stinck... cooool XD');
                 textcolor(8);
                 writeln('');
                 writeln('(hygiene + 1, mood - 1, energy - 1)');
                 hygiene := hygiene + 1;
                 mood := mood - 1;
                 energy := energy -1;
                 Continue;
               end;
               gameOver;
          end
          else if number = 5 then
          begin
               if energy >= 5 then
               begin
                 textcolor(yellow);
                 writeln('Sleep??? No no no, I am full of energy!');
                 Continue;
               end;
               if energy = 4 then
               begin
                 textcolor(yellow);
                 writeln('Zzz');
                 textcolor(8);
                 writeln('');
                 writeln('(energy + 2, hungry - 1, toilet - 1, mood -1)');
                 energy := energy + 2;
                 hungry := hungry - 1;
                 toilet := toilet - 1;
                 mood := mood - 1;
                 Continue;
               end;
               if energy = 3 then
               begin
                 textcolor(yellow);
                 writeln('woah... Zzz');
                 textcolor(8);
                 writeln('');
                 writeln('(energy + 2, hungry - 1, toilet - 1, mood -1)');
                 energy := energy + 2;
                 hungry := hungry - 1;
                 toilet := toilet - 1;
                 mood := mood - 1;
                 Continue;
               end;
               if energy = 2 then
               begin
                 textcolor(yellow);
                 writeln('Yeah, it is a good time to have a nap');
                 textcolor(8);
                 writeln('');
                 writeln('(energy + 2, hungry - 1, toilet - 1, mood - 1)');
                 energy := energy + 2;
                 hungry := hungry - 1;
                 toilet := toilet - 1;
                 mood := mood - 1;
                 Continue;
               end;
               if energy = 1 then
               begin
                 textcolor(yellow);
                 writeln('I wanna sleep sooooo much... May I hug you, ' ,user, '? ... Zzz');
                 textcolor(8);
                 writeln('');
                 writeln('(energy + 2, hungry - 1, toilet - 1, mood - 1)');
                 energy := energy + 2;
                 hungry := hungry - 1;
                 toilet := toilet - 1;
                 mood := mood - 1;
                 Continue;
               end;
               gameOver;
          end
          else if number = 6 then
          begin
               textcolor(yellow);
               writeln('Are you sure you want to exit? Y/N');
               readln(answer);
               if answer = 'n' then
                  Continue
               else
                   exit;
          end;
          textcolor(yellow);
     end;
end.


