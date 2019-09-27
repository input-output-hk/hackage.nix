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
      identifier = { name = "haskell-disque"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Arek Czarnik";
      maintainer = "arekczarnik@gmail.com";
      author = "Arek Czarnik";
      homepage = "https://github.com/ArekCzarnik/haskell-disque#readme";
      url = "";
      synopsis = "Client library for the Disque datastore";
      description = "Disque is an ongoing experiment to build a distributed, in-memory, message broker.Its goal is to capture the essence of the \"Redis as a jobs queue\" use case, which is usually implemented using blocking list operations, and move it into an ad-hoc, self-contained, scalable, and fault tolerant design, with simple to understand properties and guarantees, but still resembling Redis in terms of simplicity, performance, and implementation as a C non-blocking networked server. This library is a Haskell client for the Disque datastore.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hedis" or (buildDepError "hedis"))
          (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "haskell-disque-exe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell-disque" or (buildDepError "haskell-disque"))
            ];
          buildable = true;
          };
        };
      tests = {
        "haskell-disque-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell-disque" or (buildDepError "haskell-disque"))
            ];
          buildable = true;
          };
        };
      };
    }