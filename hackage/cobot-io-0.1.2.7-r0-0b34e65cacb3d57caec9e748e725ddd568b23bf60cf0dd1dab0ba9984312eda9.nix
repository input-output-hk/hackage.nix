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
      specVersion = "1.12";
      identifier = { name = "cobot-io"; version = "0.1.2.7"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019, Less Wrong Bio";
      maintainer = "pavel@yakovlev.me";
      author = "Pavel Yakovlev, Bogdan Neterebskii, Alexander Sadovnikov";
      homepage = "https://github.com/less-wrong/cobot-io#readme";
      url = "";
      synopsis = "Biological data file formats and IO";
      description = "Please see the README on GitHub at <https://github.com/less-wrong/cobot-io#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-msgpack" or (buildDepError "data-msgpack"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."hyraxAbif" or (buildDepError "hyraxAbif"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "cobot-io-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cobot-io" or (buildDepError "cobot-io"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-msgpack" or (buildDepError "data-msgpack"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."hyraxAbif" or (buildDepError "hyraxAbif"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."neat-interpolation" or (buildDepError "neat-interpolation"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }