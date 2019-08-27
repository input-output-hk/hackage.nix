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
      specVersion = "1.18";
      identifier = { name = "argon"; version = "0.4.1.0"; };
      license = "ISC";
      copyright = "2015 Michele Lacchia";
      maintainer = "michelelacchia@gmail.com";
      author = "Michele Lacchia";
      homepage = "http://github.com/rubik/argon";
      url = "";
      synopsis = "Measure your code's complexity";
      description = "Argon performs static analysis on your code in order to compute cyclomatic\ncomplexity. It is a quantitative measure of the number of linearly\nindipendent paths through the code.\n\nThe intended usage is through Argon's executable, which accepts a list of\nfiles or directories to analyze. The data can be optionally exported to\nJSON.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."pipes-group" or (buildDepError "pipes-group"))
          (hsPkgs."pipes-files" or (buildDepError "pipes-files"))
          (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
          (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
          (hsPkgs."lens-simple" or (buildDepError "lens-simple"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
          (hsPkgs."ghc-syb-utils" or (buildDepError "ghc-syb-utils"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          ];
        };
      exes = {
        "argon" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."argon" or (buildDepError "argon"))
            (hsPkgs."docopt" or (buildDepError "docopt"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
            ];
          };
        };
      tests = {
        "argon-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."argon" or (buildDepError "argon"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
            ];
          };
        "style" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            ];
          };
        };
      };
    }