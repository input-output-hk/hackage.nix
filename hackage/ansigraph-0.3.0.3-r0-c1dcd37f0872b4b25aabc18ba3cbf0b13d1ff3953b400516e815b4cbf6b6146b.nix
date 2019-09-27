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
      identifier = { name = "ansigraph"; version = "0.3.0.3"; };
      license = "MIT";
      copyright = "2015-2016 Cliff Harvey";
      maintainer = "cs.hbar+hs@gmail.com";
      author = "Cliff Harvey";
      homepage = "https://github.com/BlackBrane/ansigraph";
      url = "";
      synopsis = "Terminal-based graphing via ANSI and Unicode";
      description = "Ansigraph is an ultralightweight terminal-based graphing utility. It uses\nUnicode characters and ANSI escape codes to display and animate colored graphs\nof vectors/functions in real and complex variables.\n\nThis functionality is provided by a 'Graphable' type class, whose method\n'graphWith' draws a graph at the terminal. Another function 'animateWith' takes\na list of Graphable elements and displays an animation by rendering them in\nsequence. Both of these functions take an options record as an argument. The\n'graph' and 'animate' functions are defined to use the default options, and the\nuser can define similar functions based on their own settings.\n\nThere are two main ways to use the package.\nImporting \"System.Console.Ansigraph\" provides all the functionality we\ntypically use. This includes the /FlexibleInstances/ extension, which makes it\nmarginally more convenient to use graphing functions by allowing instances like\n'Graphable [Double]'.\n\nIf you want to use the package without activating /FlexibleInstances/ then you\ncan import \"System.Console.Ansigraph.Core\", which provides everything except\nthese instances. Then you must use one of a few newtype wrappers, namely:\n'Graph', 'PosGraph', 'CGraph', 'Mat', 'CMat'. These wrappers are also\navailable from the standard 'Ansigraph' module.\n\nThe \"System.Console.Ansigraph.Examples\" module contains examples of all the\ngraph types, and also shows the available ANSI colors.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or (buildDepError "transformers"));
        buildable = true;
        };
      tests = {
        "test-ansigraph" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ansigraph" or (buildDepError "ansigraph"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }