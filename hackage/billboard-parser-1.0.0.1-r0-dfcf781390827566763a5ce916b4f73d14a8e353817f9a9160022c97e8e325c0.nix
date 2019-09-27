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
      specVersion = "1.8";
      identifier = { name = "billboard-parser"; version = "1.0.0.1"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2012--2013 Utrecht University";
      maintainer = "W. Bas de Haas <bash@cs.uu.nl>";
      author = "W. Bas de Haas";
      homepage = "http://ddmal.music.mcgill.ca/billboard";
      url = "";
      synopsis = "A parser for the Billboard chord dataset";
      description = "We present a parser for the world famous Billboard dataset\ncontaining the chord transcriptions of over 1000\nprofessional chord transcriptions of popular music randomly\nselected from /Billboard/ magazine's ``Hot 100'' chart\nbetween 1958 and 1991, all time-aligned with audio.\n\nSee: W. Bas de Haas and John Ashley Burgoyne,\n/Parsing the Billboard Chord Transcriptions/, Technical Report\nUU-CS-2012-018, Department of Information and Computing\nSciences, Utrecht University, 2012.\n(<http://www.cs.uu.nl/research/techreps/repo/CS-2012/2012-018.pdf>)\n\nAnd: John Ashley Burgoyne, Jonathan Wild, Ichiro Fujinaga,\n/An Expert Ground-Truth Set for Audio Chord Recognition and Music Analysis/,\nIn: Proceedings of International\nConference on Music Information Retrieval, 2011.\n(<http://ismir2011.ismir.net/papers/OS8-1.pdf>)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."uu-parsinglib" or (buildDepError "uu-parsinglib"))
          (hsPkgs."ListLike" or (buildDepError "ListLike"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."HarmTrace-Base" or (buildDepError "HarmTrace-Base"))
          ];
        buildable = true;
        };
      exes = {
        "billboard-parser" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parseargs" or (buildDepError "parseargs"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."uu-parsinglib" or (buildDepError "uu-parsinglib"))
            (hsPkgs."ListLike" or (buildDepError "ListLike"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."HarmTrace-Base" or (buildDepError "HarmTrace-Base"))
            ];
          buildable = true;
          };
        };
      };
    }