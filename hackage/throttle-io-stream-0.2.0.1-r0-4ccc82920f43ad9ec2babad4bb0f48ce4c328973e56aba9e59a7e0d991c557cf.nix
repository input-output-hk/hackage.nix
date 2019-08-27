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
      identifier = { name = "throttle-io-stream"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Moritz Schulte";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Schulte";
      homepage = "https://github.com/mtesseract/throttle-io-stream#readme";
      url = "";
      synopsis = "Throttler between arbitrary IO producer and consumer functions";
      description = "This packages provides functionality for throttling IO using general IO callbacks. The throttling depends on a provided configuration. The supported throttling modes are producer throttling, consumer throttling or producer & consumer throttling.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
          (hsPkgs."clock" or (buildDepError "clock"))
          ];
        };
      tests = {
        "throttle-io-stream-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."throttle-io-stream" or (buildDepError "throttle-io-stream"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."say" or (buildDepError "say"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."async" or (buildDepError "async"))
            ];
          };
        };
      };
    }