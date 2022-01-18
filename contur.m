function contur()
 % aripa stanga jos background
 aripa_stanga_jos_exterior=[242 200 274 32 113;195 91 80 136 229];
 %aripa_stanga_jos_exterior=[113 32 274 200 242;229 136 80 91 195];
 curba_aripa_stanga_jos_exterior=gr4_cb(aripa_stanga_jos_exterior,0,1,0);
 
 %aripa stanga sus exterior
 aripa_stanga_sus_exterior=[113 34 134 -37 36; 229 223 318 325 378];
 curba_aripa_stanga_sus_exterior=gr4_cb(aripa_stanga_sus_exterior,0,1,0);
 
 %aripa stanga jumatate sus exterior
 aripa_stanga_jumatate_sus_exterior=[36 164 243.5; 378 366.5 275.25];
 curba_aripa_stanga_jumatate_sus_exterior=gr2_cb(aripa_stanga_jumatate_sus_exterior,0,1,0);
 
 %antena stanga parte inferioara
 antena_stanga_parte_inferioara=[243.5 239 208; 275.25 327 327];
 %antena_stanga_parte_inferioara=[208 239 243.5; 327 327 275.25];
 curba_antena_stanga_parte_inferioara=gr2_cb(antena_stanga_parte_inferioara,0,1,0);
 
 %antena stanga parte superioara
 antena_stanga_parte_superioara=[208 208 162.5 208.5 229 247.5; 327 303 340 332 363 297];
 %antena_stanga_parte_superioara=[247.5 229 208.5 162.5 208 208; 297 363 332 340 303 327];
 curba_antena_stanga_parte_superioara=gr5_cb(antena_stanga_parte_superioara,0,1,0);
 
 %zona de mijloc
 zona_mijloc=[247.5 249 251; 297 298 297.5];
 %zona_mijloc=[251 249 247.5; 297.5 298 297];
 curba_zona_mijloc=gr2_cb(zona_mijloc,0,1,0);
 
 %antena dreapta parte superioara
 antena_dreapta_parte_superioara=[251 263.5 291.25 326 297.5 289; 297.5 358 334 345.5 298.5 325];
 curba_antena_dreapta_parte_superioara=gr5_cb(antena_dreapta_parte_superioara,0,1,0);
 
 %antena dreapta parte inferioara
 antena_dreapta_parte_inferioara=[289 261.5 255; 325 334.5 276];
 curba_antena_dreapta_parte_inferioara=gr2_cb(antena_dreapta_parte_inferioara,0,1,0);
 
 %aripa dreapta jumatate sus exterior
 aripa_dreapta_jumatate_sus_exterior=[255 363 474; 276 381 373.5];
 %aripa_dreapta_jumatate_sus_exterior=[474 363 255; 373.5 381 276];
 curba_aripa_dreapta_jumatate_sus_exterior=gr2_cb(aripa_dreapta_jumatate_sus_exterior,0,1,0);
 
 
 %aripa dreapta sus exterior
 aripa_dreapta_sus_exterior=[474 552 432 478 380.5 464.5 390.5; 373.5 384 310 288.5 286.5 241.5 226.5];
 curba_aripa_dreapta_sus_exterior=gr6_cb(aripa_dreapta_sus_exterior,0,1,0);
 
 %aripa dreapta jos exterior
 aripa_dreapta_jos_exterior=[390.5 433 353.5 262 282.5 255.5; 226.5 137 140.5 84 88.5 202];
 curba_aripa_dreapta_jos_exterior=gr5_cb(aripa_dreapta_jos_exterior,0,1,0);
 
 %coada 
 coada=[255.5 245.8 277 205 255 242; 202 160 117 99 176 195];
 curba_coada=gr5_cb(coada,0,1,0);
 
 %definesc culoarea in RGB
 negru=[0 0 0];
 
 
 %aleg o variabila care memoreaza toate curbele
 contur_fluture=[curba_aripa_stanga_jos_exterior, curba_aripa_stanga_sus_exterior, ...
     curba_aripa_stanga_jumatate_sus_exterior,curba_antena_stanga_parte_inferioara,...
     curba_antena_stanga_parte_superioara, curba_zona_mijloc, curba_antena_dreapta_parte_superioara...
     curba_antena_dreapta_parte_inferioara,  curba_aripa_dreapta_jumatate_sus_exterior,...
     curba_aripa_dreapta_sus_exterior, curba_aripa_dreapta_jos_exterior, ...
     curba_coada];
 
 %colorez conturul
colorare(contur_fluture, negru);

 
end
