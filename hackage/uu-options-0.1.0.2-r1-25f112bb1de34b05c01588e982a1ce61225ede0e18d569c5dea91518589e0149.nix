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
      identifier = { name = "uu-options"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "S Doaitse Swierstra";
      maintainer = "Doaitse Swierstra";
      author = "Doaitse Swierstra, Utrecht University";
      homepage = "http://www.cs.uu.nl/wiki/bin/view/HUT/ParserCombinators";
      url = "";
      synopsis = "Parse command line options using uu-interleave and uu-parsinglib";
      description = "Using the new Control.Applicative.Interleaved module we use the uu-parsinglib library to construct extremely concise command line processors, which provide\nhelpful information when called incorrectly.\n\nThe module contains a module `OptionsDemo` which serves as an example of how to use the various options of the module; you may take a look at the source code.\n\nThe package also installs the program `demo-options`\nwhich may be called from the command line to see what happens for the various options. It also contains a function demo which may be called from within ghci to experiment.\n\nBackground  information can be found in a Technical Report at <http://www.cs.uu.nl/research/techreps/UU-CS-2013-005.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."uu-parsinglib" or (buildDepError "uu-parsinglib"))
          (hsPkgs."uu-interleaved" or (buildDepError "uu-interleaved"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."lenses" or (buildDepError "lenses"))
          ];
        };
      exes = {
        "demo-options" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."uu-parsinglib" or (buildDepError "uu-parsinglib"))
            (hsPkgs."uu-interleaved" or (buildDepError "uu-interleaved"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."lenses" or (buildDepError "lenses"))
            ];
          };
        };
      };
    }