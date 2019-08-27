let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."diagrams-cairo" or (buildDepError "diagrams-cairo"))
          (hsPkgs."diagrams-core" or (buildDepError "diagrams-core"))
          (hsPkgs."diagrams-gtk" or (buildDepError "diagrams-gtk"))
          (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
          (hsPkgs."glib" or (buildDepError "glib"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      };
    }