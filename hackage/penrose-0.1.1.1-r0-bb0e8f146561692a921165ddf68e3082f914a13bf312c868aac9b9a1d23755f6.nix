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
      identifier = { name = "penrose"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "penrose.team@gmail.com";
      author = "team-penrose";
      homepage = "http://penrose.ink";
      url = "";
      synopsis = "Create beautiful diagrams just by typing mathematical notation in plain text.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."ad" or (buildDepError "ad"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."websockets" or (buildDepError "websockets"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."multimap" or (buildDepError "multimap"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."pretty-terminal" or (buildDepError "pretty-terminal"))
          (hsPkgs."scotty" or (buildDepError "scotty"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."parser-combinators" or (buildDepError "parser-combinators"))
          (hsPkgs."docopt" or (buildDepError "docopt"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (buildToolDepError "alex")))
          ];
        buildable = true;
        };
      exes = {
        "penrose" = {
          depends = [
            (hsPkgs."penrose" or (buildDepError "penrose"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      tests = {
        "penrose-testsuite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."ad" or (buildDepError "ad"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or (buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."multimap" or (buildDepError "multimap"))
            (hsPkgs."pretty-terminal" or (buildDepError "pretty-terminal"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."docopt" or (buildDepError "docopt"))
            (hsPkgs."parser-combinators" or (buildDepError "parser-combinators"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            ];
          buildable = true;
          };
        };
      };
    }