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
      identifier = { name = "gochan"; version = "0.0.1"; };
      license = "MIT";
      copyright = "Copyright (C) 2016 Charles Strahan";
      maintainer = "Charles Strahan <charles@cstrahan.com>";
      author = "Charles Strahan <charles@cstrahan.com>";
      homepage = "http://github.com/cstrahan/gochan";
      url = "";
      synopsis = "Go-style channels";
      description = "This library provides bounded channels similar to those popularized\nby the Go programming language.\n\nTHIS LIBRARY IS STILL ALPHA AND SUBJECT TO CHANGE.\n\nBreaking changes during the 0.0.X series won't result in a major\nversion bump (I hope to release a stable 1.0.0 soon).\n\nPlease give gochan a try and file an issue or pull request if you\ndiscover any ways to improve this library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      exes = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."gochan" or (buildDepError "gochan"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        "weight" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."weigh" or (buildDepError "weigh"))
            (hsPkgs."gochan" or (buildDepError "gochan"))
            ];
          buildable = true;
          };
        };
      tests = {
        "fuzz" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-core" or (buildDepError "hspec-core"))
            (hsPkgs."hspec-core" or (buildDepError "hspec-core"))
            (hsPkgs."gochan" or (buildDepError "gochan"))
            ];
          buildable = true;
          };
        };
      };
    }