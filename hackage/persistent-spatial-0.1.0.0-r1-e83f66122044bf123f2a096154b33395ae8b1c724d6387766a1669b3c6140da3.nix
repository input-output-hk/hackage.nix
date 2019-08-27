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
      identifier = { name = "persistent-spatial"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Satsuma Labs";
      maintainer = "george.steel@gmail.com";
      author = "George Steel";
      homepage = "https://github.com/SatsumaLabs/persistent-spatial#readme";
      url = "";
      synopsis = "Database agnostic, spatially indexed type for geographic points.";
      description = "Defines type for storing geographic coordinates that can be spatially indexed by any database which supports Word64.\nThis inxeding is implemented using a normal integer index on points repersented using a Morton Z-Order curve.\nGeographic regions are transformed into a covering set of tiles (contigious ranges) which can be used in a single query.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."integer-logarithms" or (buildDepError "integer-logarithms"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."http-api-data" or (buildDepError "http-api-data"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."persistent" or (buildDepError "persistent"))
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."persistent-spatial" or (buildDepError "persistent-spatial"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."http-api-data" or (buildDepError "http-api-data"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      };
    }