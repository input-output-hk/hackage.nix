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
      identifier = { name = "bitx-bitcoin"; version = "0.9.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tebello Thejane <zyxoas+hackage@gmail.com>";
      author = "Tebello Thejane";
      homepage = "https://github.com/tebello-thejane/bitx-haskell";
      url = "";
      synopsis = "A Haskell library for working with the BitX bitcoin exchange.";
      description = "Haskell bindings to the BitX REST API, as described here: <https://bitx.co/api>.\n\nNote that since this library interfaces directly with a financial API, great care\nmust be taken in its use. In particular, the author cannot be held accountable for any\nfinancial losses as a result of programming error, whether that error is in your code,\nthe code of the author of this library, or BitX's code. This is just common sense.\n\nIf you need to make sure that nothing funny happens in the code, apart from reading\nthe source yourself, you should also perform a few test transactions with very small\ndenominations, as I will strive to do every time before releasing a new version.\n\nFor a very small usage example, see \"Network.Bitcoin.BitX.Public\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bitx-bitcoin" or (buildDepError "bitx-bitcoin"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."safe" or (buildDepError "safe"))
            ];
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          };
        "example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."bitx-bitcoin" or (buildDepError "bitx-bitcoin"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }