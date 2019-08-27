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
      identifier = { name = "HostAndPort"; version = "0.2.0"; };
      license = "MIT";
      copyright = "(c) Slava Bacherikov 2015";
      maintainer = "slava@bacher09.org";
      author = "Slava Bacherikov";
      homepage = "https://github.com/bacher09/hostandport";
      url = "";
      synopsis = "Parser for host and port pairs like localhost:22";
      description = "Simple parser for parsing host and port pairs.\nHost can be either ipv4, ipv6 or domain name and port are\noptional.\n\nIPv6 address should be surrounded by square brackets.\n\nExamples:\n\n* localhost\n\n* localhost:8080\n\n* 127.0.0.1\n\n* 127.0.0.1:8080\n\n* [::1]\n\n* [::1]:8080";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HostAndPort" or (buildDepError "HostAndPort"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HostAndPort" or (buildDepError "HostAndPort"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          };
        };
      benchmarks = {
        "bench-hostandport" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HostAndPort" or (buildDepError "HostAndPort"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        };
      };
    }