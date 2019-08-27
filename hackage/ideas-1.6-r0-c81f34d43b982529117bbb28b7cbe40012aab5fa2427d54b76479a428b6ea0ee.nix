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
    flags = { logging = false; };
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "ideas"; version = "1.6"; };
      license = "Apache-2.0";
      copyright = "(c) 2016";
      maintainer = "bastiaan.heeren@ou.nl";
      author = "Bastiaan Heeren, Alex Gerdes, Johan Jeuring";
      homepage = "http://ideas.cs.uu.nl/www/";
      url = "";
      synopsis = "Feedback services for intelligent tutoring systems";
      description = "Ideas (Interactive Domain-specific Exercise Assistants) is a joint research\nproject between the Open University of the Netherlands and Utrecht\nUniversity. The project's goal is to use software and compiler technology to\nbuild state-of-the-art components for intelligent tutoring systems (ITS) and\nlearning environments. The 'ideas' software package provides a generic\nframework for constructing the expert knowledge module (also known as a\ndomain reasoner) for an ITS or learning environment. Domain knowledge is\noffered as a set of feedback services that are used by external tools such\nas the digital mathematical environment (DME), MathDox, and the Math-Bridge\nsystem. We have developed several domain reasoners based on this framework,\nincluding reasoners for mathematics, linear algebra, logic, learning Haskell\n(the Ask-Elle programming tutor) and evaluating Haskell expressions, and for\npracticing communication skills (the serious game Communicate!).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."cgi" or (buildDepError "cgi"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."Diff" or (buildDepError "Diff"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."uniplate" or (buildDepError "uniplate"))
          (hsPkgs."wl-pprint" or (buildDepError "wl-pprint"))
          ] ++ (pkgs.lib).optionals (flags.logging) [
          (hsPkgs."HDBC" or (buildDepError "HDBC"))
          (hsPkgs."HDBC-sqlite3" or (buildDepError "HDBC-sqlite3"))
          ];
        };
      };
    }