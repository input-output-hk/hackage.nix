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
    flags = { cabal19 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "debian"; version = "3.46"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "david@seereason.com";
      author = "David Fox";
      homepage = "http://src.seereason.com/haskell-debian";
      url = "";
      synopsis = "Modules for working with the Debian package system";
      description = "This library includes modules covering some basic data types defined by\nthe Debian policy manual - version numbers, control file syntax, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."bzlib" or (buildDepError "bzlib"))
          (hsPkgs."HaXml" or (buildDepError "HaXml"))
          (hsPkgs."Unixutils" or (buildDepError "Unixutils"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          ] ++ [ (hsPkgs."Cabal" or (buildDepError "Cabal")) ];
        };
      exes = {
        "fakechanges" = {
          depends = [ (hsPkgs."Cabal" or (buildDepError "Cabal")) ];
          };
        "debian-report" = {
          depends = [ (hsPkgs."Cabal" or (buildDepError "Cabal")) ];
          };
        "cabal-debian" = {
          depends = [ (hsPkgs."Cabal" or (buildDepError "Cabal")) ] ++ [
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            ];
          };
        "apt-get-build-depends" = {
          depends = [ (hsPkgs."Cabal" or (buildDepError "Cabal")) ];
          };
        };
      };
    }