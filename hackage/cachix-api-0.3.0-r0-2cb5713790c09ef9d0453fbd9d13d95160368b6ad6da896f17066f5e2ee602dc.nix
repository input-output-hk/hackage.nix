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
      specVersion = "2.2";
      identifier = { name = "cachix-api"; version = "0.3.0"; };
      license = "Apache-2.0";
      copyright = "2018 Domen Kožar";
      maintainer = "domen@enlambda.com";
      author = "Domen Kožar";
      homepage = "https://github.com/cachix/cachix#readme";
      url = "";
      synopsis = "Servant HTTP API specification for https://cachix.org";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."cookie" or (buildDepError "cookie"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."http-api-data" or (buildDepError "http-api-data"))
          (hsPkgs."http-media" or (buildDepError "http-media"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."servant-auth" or (buildDepError "servant-auth"))
          (hsPkgs."servant-auth-server" or (buildDepError "servant-auth-server"))
          (hsPkgs."servant-auth-swagger" or (buildDepError "servant-auth-swagger"))
          (hsPkgs."servant-client" or (buildDepError "servant-client"))
          (hsPkgs."servant-swagger" or (buildDepError "servant-swagger"))
          (hsPkgs."string-conv" or (buildDepError "string-conv"))
          (hsPkgs."swagger2" or (buildDepError "swagger2"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      exes = {
        "cachix-gen-swagger" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cachix-api" or (buildDepError "cachix-api"))
            ];
          };
        };
      tests = {
        "cachix-api-test" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cachix-api" or (buildDepError "cachix-api"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."cookie" or (buildDepError "cookie"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."http-api-data" or (buildDepError "http-api-data"))
            (hsPkgs."http-media" or (buildDepError "http-media"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-auth" or (buildDepError "servant-auth"))
            (hsPkgs."servant-auth-server" or (buildDepError "servant-auth-server"))
            (hsPkgs."servant-auth-swagger" or (buildDepError "servant-auth-swagger"))
            (hsPkgs."servant-swagger" or (buildDepError "servant-swagger"))
            (hsPkgs."servant-swagger-ui-core" or (buildDepError "servant-swagger-ui-core"))
            (hsPkgs."string-conv" or (buildDepError "string-conv"))
            (hsPkgs."swagger2" or (buildDepError "swagger2"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (buildToolDepError "hspec-discover")))
            ];
          };
        };
      };
    }