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
    flags = { llvm = false; threaded = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "regexchar"; version = "0.9.0.15"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2010-2015 Dr. Alistair Ward";
      maintainer = "mailto:regexchar@functionalley.eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu/RegExChar/regExChar.html";
      url = "";
      synopsis = "A POSIX, extended regex-engine.";
      description = "Provides a POSIX, extended regex-engine, specialised from the underlying /polymorphic/ package /regexdot/, to merely process the traditional character-lists.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."regex-base" or (buildDepError "regex-base"))
          (hsPkgs."regexdot" or (buildDepError "regexdot"))
          (hsPkgs."toolshed" or (buildDepError "toolshed"))
          ];
        };
      exes = {
        "grecce" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."regexchar" or (buildDepError "regexchar"))
            (hsPkgs."regex-base" or (buildDepError "regex-base"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."regexdot" or (buildDepError "regexdot"))
            (hsPkgs."toolshed" or (buildDepError "toolshed"))
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."regexchar" or (buildDepError "regexchar"))
            (hsPkgs."regexdot" or (buildDepError "regexdot"))
            (hsPkgs."toolshed" or (buildDepError "toolshed"))
            ];
          };
        };
      };
    }