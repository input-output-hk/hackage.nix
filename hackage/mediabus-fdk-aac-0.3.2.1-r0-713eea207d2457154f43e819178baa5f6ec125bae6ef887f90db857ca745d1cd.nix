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
      identifier = { name = "mediabus-fdk-aac"; version = "0.3.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2016, 2017 Sven Heyll, Lindenbaum GmbH";
      maintainer = "sven.heyll@lindenbaum.eu";
      author = "Sven Heyll";
      homepage = "https://github.com/lindenbaum/mediabus-fdk-aac";
      url = "";
      synopsis = "Mediabus plugin for the Frauenhofer ISO-14496-3 AAC FDK";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."inline-c" or (buildDepError "inline-c"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mediabus" or (buildDepError "mediabus"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."spool" or (buildDepError "spool"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        libs = [ (pkgs."m" or (sysDepError "m")) ];
        pkgconfig = [ (pkgconfPkgs."fdk-aac" or (pkgConfDepError "fdk-aac")) ];
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."mediabus-fdk-aac" or (buildDepError "mediabus-fdk-aac"))
            (hsPkgs."mediabus" or (buildDepError "mediabus"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      benchmarks = {
        "encoder-benchmark" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."mediabus-fdk-aac" or (buildDepError "mediabus-fdk-aac"))
            (hsPkgs."mediabus" or (buildDepError "mediabus"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }