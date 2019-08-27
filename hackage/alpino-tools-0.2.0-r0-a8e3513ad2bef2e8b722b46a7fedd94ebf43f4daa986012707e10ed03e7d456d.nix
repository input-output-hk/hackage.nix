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
      identifier = { name = "alpino-tools"; version = "0.2.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright 2010-2012 Daniël de Kok";
      maintainer = "Daniël de Kok <me@danieldk.eu>";
      author = "Daniël de Kok <me@danieldk.eu>";
      homepage = "http://github.com/danieldk/alpino-tools";
      url = "";
      synopsis = "Alpino data manipulation tools";
      description = "Tools for manipulating data for the Alpino parser for Dutch.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."bytestring-lexing" or (buildDepError "bytestring-lexing"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
          (hsPkgs."hexpat-pickle" or (buildDepError "hexpat-pickle"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."rosezipper" or (buildDepError "rosezipper"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      exes = {
        "at_model_rescore_data" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."alpino-tools" or (buildDepError "alpino-tools"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            ];
          };
        "at_model_filter_data" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."alpino-tools" or (buildDepError "alpino-tools"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          };
        "at_model_oracle" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."alpino-tools" or (buildDepError "alpino-tools"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            ];
          };
        "at_model_random_sample" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."alpino-tools" or (buildDepError "alpino-tools"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            ];
          };
        "at_model_statistics_data" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."alpino-tools" or (buildDepError "alpino-tools"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            ];
          };
        };
      };
    }