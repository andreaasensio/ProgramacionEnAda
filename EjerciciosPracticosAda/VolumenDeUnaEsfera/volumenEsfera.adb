--Ejercicio 2:
WITH Text_IO; -- AQUI ESTAMOS IMPORTANDO UNA LIBRERIA DENOMINADA text_IO que nos permite recoger datos de usuario, imprimir datos o guardar datos en el disco;
PROCEDURE VolumenEsfera IS
   Pi: CONSTANT Float := 3.14;
   radio: Float;
   AreaResultante : Float;
   ResultadoFinal:Float;

   PACKAGE Float_IO IS NEW Text_IO.Float_IO (Float);

   PROCEDURE AreaEsfera (Radio: IN Float; areaResultante: OUT Float ) IS
   BEGIN
      areaResultante := 4.0 *pi * (Radio * Radio);
   END AreaEsfera;

   BEGIN
      Text_IO.Put_Line("introduzca radio de la esfera: ");
      Float_IO.Get(Radio);
      AreaEsfera(Radio,AreaResultante);
      ResultadoFinal := AreaResultante * (radio / 3.0);
      Float_IO.put(resultadoFinal);
END VolumenEsfera;

