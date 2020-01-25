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
    flags = { long-tests = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-quickcheck"; version = "0.0.8.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "";
      url = "";
      synopsis = "QuickCheck entire APIs";
      description = "This packages provides QuickCheck properties that are tested across an entire\nAPI.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-compat-batteries" or (buildDepError "base-compat-batteries"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."clock" or (buildDepError "clock"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-media" or (buildDepError "http-media"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."servant-client" or (buildDepError "servant-client"))
          (hsPkgs."servant-server" or (buildDepError "servant-server"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."warp" or (buildDepError "warp"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (buildDepError "semigroups"));
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-compat-batteries" or (buildDepError "base-compat-batteries"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-core" or (buildDepError "hspec-core"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-io" or (buildDepError "quickcheck-io"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-blaze" or (buildDepError "servant-blaze"))
            (hsPkgs."servant-client" or (buildDepError "servant-client"))
            (hsPkgs."servant-quickcheck" or (buildDepError "servant-quickcheck"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        "example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."servant-quickcheck" or (buildDepError "servant-quickcheck"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }