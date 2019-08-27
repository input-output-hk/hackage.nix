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
    flags = { generators = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "netlink"; version = "1.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Google Inc. 2010";
      maintainer = "Markus Ongyerth <ongy@ongy.net>";
      author = "David Anderson";
      homepage = "https://github.com/Ongy/netlink-hs";
      url = "";
      synopsis = "Netlink communication for Haskell";
      description = "Library to comminicate with Linux kernel via Netlink";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."pretty-hex" or (buildDepError "pretty-hex"))
          ];
        };
      exes = {
        "dump_nl80211" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."netlink" or (buildDepError "netlink"))
            ];
          };
        "genlinfo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."netlink" or (buildDepError "netlink"))
            ];
          };
        "dump_rtnetlink" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."netlink" or (buildDepError "netlink"))
            ];
          };
        "Generate" = {
          depends = (pkgs.lib).optionals (flags.generators) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."language-c" or (buildDepError "language-c"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
            ];
          };
        "GenerateGenl" = {
          depends = (pkgs.lib).optionals (flags.generators) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."language-c" or (buildDepError "language-c"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
            ];
          };
        "GenerateNL80211" = {
          depends = (pkgs.lib).optionals (flags.generators) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."language-c" or (buildDepError "language-c"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
            ];
          };
        };
      };
    }