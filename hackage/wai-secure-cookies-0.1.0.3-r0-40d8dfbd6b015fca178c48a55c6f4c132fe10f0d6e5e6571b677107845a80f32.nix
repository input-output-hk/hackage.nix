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
      identifier = { name = "wai-secure-cookies"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "© حبيب الامين ‪2017";
      maintainer = "ha.alamin@gmail.com";
      author = "Habib Alamin";
      homepage = "https://github.com/habibalamin/wai-secure-cookies";
      url = "";
      synopsis = "";
      description = "WAI middleware to automatically encrypt and sign cookies";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."protolude" or (buildDepError "protolude"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          ];
        };
      exes = {
        "waicookie-genkey" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."memory" or (buildDepError "memory"))
            ];
          };
        };
      tests = {
        "wai-secure-cookies-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."wai-secure-cookies" or (buildDepError "wai-secure-cookies"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (buildDepError "hspec-expectations"))
            (hsPkgs."hspec-wai" or (buildDepError "hspec-wai"))
            ];
          };
        };
      };
    }