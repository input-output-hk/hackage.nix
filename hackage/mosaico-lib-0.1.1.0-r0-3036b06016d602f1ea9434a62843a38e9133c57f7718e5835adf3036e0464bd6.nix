{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mosaico-lib"; version = "0.1.1.0"; };
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
        depends = [
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
          (hsPkgs."diagrams-core" or (errorHandler.buildDepError "diagrams-core"))
          (hsPkgs."diagrams-gtk" or (errorHandler.buildDepError "diagrams-gtk"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }