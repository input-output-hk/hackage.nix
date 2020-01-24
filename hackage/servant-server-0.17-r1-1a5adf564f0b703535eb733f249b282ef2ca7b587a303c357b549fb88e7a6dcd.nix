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
      identifier = { name = "servant-server"; version = "0.17"; };
      license = "BSD-3-Clause";
      copyright = "2014-2016 Zalora South East Asia Pte Ltd, 2016-2019 Servant Contributors";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Servant Contributors";
      homepage = "http://docs.servant.dev/";
      url = "";
      synopsis = "A family of combinators for defining webservices APIs and serving them";
      description = "A family of combinators for defining webservices APIs and serving them\n\nYou can learn about the basics in the <http://docs.servant.dev/en/stable/tutorial/index.html tutorial>.\n\n<https://github.com/haskell-servant/servant/blob/master/servant-server/example/greet.hs Here>\nis a runnable example, with comments, that defines a dummy API and implements\na webserver that serves this API, using this package.\n\n<https://github.com/haskell-servant/servant/blob/master/servant-server/CHANGELOG.md CHANGELOG>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."http-api-data" or (buildDepError "http-api-data"))
          (hsPkgs."base-compat" or (buildDepError "base-compat"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."http-media" or (buildDepError "http-media"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-app-static" or (buildDepError "wai-app-static"))
          (hsPkgs."word8" or (buildDepError "word8"))
          ];
        buildable = true;
        };
      exes = {
        "greet" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (buildDepError "hspec-wai"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."should-not-typecheck" or (buildDepError "should-not-typecheck"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }