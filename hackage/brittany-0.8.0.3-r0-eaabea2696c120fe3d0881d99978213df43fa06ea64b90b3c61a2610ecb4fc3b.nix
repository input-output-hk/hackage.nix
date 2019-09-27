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
    flags = { brittany-dev = false; brittany-dev-lib = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "brittany"; version = "0.8.0.3"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright (C) 2016-2017 Lennart Spitzner";
      maintainer = "Lennart Spitzner <hexagoxel@hexagoxel.de>";
      author = "Lennart Spitzner";
      homepage = "https://github.com/lspitzner/brittany/";
      url = "";
      synopsis = "Haskell source code formatter";
      description = "See <https://github.com/lspitzner/brittany/blob/master/README.md the README>.\n\nIf you are interested in the implementation, have a look at <https://github.com/lspitzner/brittany/blob/master/doc/implementation/theory.md this document>;\n\nThe implementation is documented in more detail <https://github.com/lspitzner/brittany/blob/master/doc/implementation/index.md here>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
          (hsPkgs."ghc-exactprint" or (buildDepError "ghc-exactprint"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."multistate" or (buildDepError "multistate"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."neat-interpolation" or (buildDepError "neat-interpolation"))
          (hsPkgs."data-tree-print" or (buildDepError "data-tree-print"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."butcher" or (buildDepError "butcher"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."uniplate" or (buildDepError "uniplate"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."monad-memo" or (buildDepError "monad-memo"))
          (hsPkgs."unsafe" or (buildDepError "unsafe"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."czipwith" or (buildDepError "czipwith"))
          (hsPkgs."ghc-boot-th" or (buildDepError "ghc-boot-th"))
          ];
        buildable = true;
        };
      exes = {
        "brittany" = {
          depends = [
            (hsPkgs."brittany" or (buildDepError "brittany"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."ghc-exactprint" or (buildDepError "ghc-exactprint"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."multistate" or (buildDepError "multistate"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."neat-interpolation" or (buildDepError "neat-interpolation"))
            (hsPkgs."data-tree-print" or (buildDepError "data-tree-print"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."butcher" or (buildDepError "butcher"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."monad-memo" or (buildDepError "monad-memo"))
            (hsPkgs."unsafe" or (buildDepError "unsafe"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."czipwith" or (buildDepError "czipwith"))
            (hsPkgs."ghc-boot-th" or (buildDepError "ghc-boot-th"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.brittany-dev-lib then false else true;
          };
        };
      tests = {
        "unittests" = {
          depends = [
            (hsPkgs."brittany" or (buildDepError "brittany"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."ghc-exactprint" or (buildDepError "ghc-exactprint"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."multistate" or (buildDepError "multistate"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."neat-interpolation" or (buildDepError "neat-interpolation"))
            (hsPkgs."data-tree-print" or (buildDepError "data-tree-print"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."butcher" or (buildDepError "butcher"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."monad-memo" or (buildDepError "monad-memo"))
            (hsPkgs."unsafe" or (buildDepError "unsafe"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."czipwith" or (buildDepError "czipwith"))
            (hsPkgs."ghc-boot-th" or (buildDepError "ghc-boot-th"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          buildable = if flags.brittany-dev-lib then false else true;
          };
        "littests" = {
          depends = [
            (hsPkgs."brittany" or (buildDepError "brittany"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."ghc-exactprint" or (buildDepError "ghc-exactprint"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."multistate" or (buildDepError "multistate"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."neat-interpolation" or (buildDepError "neat-interpolation"))
            (hsPkgs."data-tree-print" or (buildDepError "data-tree-print"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."butcher" or (buildDepError "butcher"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."monad-memo" or (buildDepError "monad-memo"))
            (hsPkgs."unsafe" or (buildDepError "unsafe"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."czipwith" or (buildDepError "czipwith"))
            (hsPkgs."ghc-boot-th" or (buildDepError "ghc-boot-th"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            ];
          buildable = if flags.brittany-dev-lib then false else true;
          };
        "libinterfacetests" = {
          depends = [
            (hsPkgs."brittany" or (buildDepError "brittany"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          buildable = if flags.brittany-dev-lib then false else true;
          };
        };
      };
    }