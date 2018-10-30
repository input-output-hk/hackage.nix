{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mosaico-lib";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "ⓒ Manuel Gómez, 2015";
      maintainer = "targen@gmail.com";
      author = "Manuel Gómez";
      homepage = "http://ldc.usb.ve/~05-38235/cursos/CI3661/2015AJ/";
      url = "";
      synopsis = "Generación interactiva de mosaicos";
      description = "Herramientas para facilitar la generación interactiva de mosaicos.  Se provee\nun tipo para representar imágenes y cargarlas desde archivos, un tipo de\nobjetos que representan ventanas que sirven como lienzos para dibujar\nmosaicos, y tipos para representar distribuciones espaciales de rectángulos de\ncolores.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.JuicyPixels)
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.colour)
          (hsPkgs.diagrams-cairo)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-gtk)
          (hsPkgs.diagrams-lib)
          (hsPkgs.glib)
          (hsPkgs.gtk)
          (hsPkgs.mtl)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.transformers)
        ];
      };
    };
  }