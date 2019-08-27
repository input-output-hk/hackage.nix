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
      specVersion = "1.6";
      identifier = { name = "sifflet"; version = "0.1.7"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2009-2010 Gregory D. Weber";
      maintainer = "\"gdweber\" ++ drop 3 \"abc@\" ++ \"iue.edu\"";
      author = "Gregory D. Weber";
      homepage = "http://mypage.iu.edu/~gdweber/software/sifflet/";
      url = "";
      synopsis = "A simple, visual, functional programming language.";
      description = "Sifflet is a visual, functional programming language.\nSifflet users can make programs by drawing diagrams\nto connect functions and other units.\nSifflet show the intermediate steps of the computation\non the diagram, and can expand function calls to show further details.\nIt is intended as an aid for learning about recursion.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sifflet" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."glib" or (buildDepError "glib"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."process" or (buildDepError "process"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"));
          libs = [
            (pkgs."gdk-x11-2.0" or (sysDepError "gdk-x11-2.0"))
            (pkgs."gtk-x11-2.0" or (sysDepError "gtk-x11-2.0"))
            ];
          };
        };
      };
    }