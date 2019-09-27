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
    flags = {
      aeson = false;
      hashable = false;
      deepseq = false;
      serialise = false;
      };
    package = {
      specVersion = "2.0";
      identifier = { name = "o-clock"; version = "1.0.0.1"; };
      license = "MIT";
      copyright = "2018 Serokell";
      maintainer = "Serokell <hi@serokell.io>";
      author = "@serokell";
      homepage = "https://github.com/serokell/o-clock";
      url = "";
      synopsis = "Type-safe time library.";
      description = "See README.md for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ] ++ (pkgs.lib).optionals (flags.aeson) [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."text" or (buildDepError "text"))
          ]) ++ (pkgs.lib).optional (flags.hashable) (hsPkgs."hashable" or (buildDepError "hashable"))) ++ (pkgs.lib).optional (flags.deepseq) (hsPkgs."deepseq" or (buildDepError "deepseq"))) ++ (pkgs.lib).optional (flags.serialise) (hsPkgs."serialise" or (buildDepError "serialise"));
        buildable = true;
        };
      exes = {
        "play-o-clock" = {
          depends = [
            (hsPkgs."o-clock" or (buildDepError "o-clock"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      tests = {
        "o-clock-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."o-clock" or (buildDepError "o-clock"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hspec" or (buildDepError "tasty-hspec"))
            (hsPkgs."type-spec" or (buildDepError "type-spec"))
            ];
          buildable = true;
          };
        "o-clock-doctest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.doctest or (pkgs.buildPackages.doctest or (buildToolDepError "doctest")))
            ];
          buildable = true;
          };
        "readme-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."o-clock" or (buildDepError "o-clock"))
            (hsPkgs."markdown-unlit" or (buildDepError "markdown-unlit"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit or (pkgs.buildPackages.markdown-unlit or (buildToolDepError "markdown-unlit")))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "o-clock-benchmark" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."o-clock" or (buildDepError "o-clock"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            (hsPkgs."tiempo" or (buildDepError "tiempo"))
            (hsPkgs."time-units" or (buildDepError "time-units"))
            ] ++ (pkgs.lib).optional (!flags.deepseq) (hsPkgs."deepseq" or (buildDepError "deepseq"));
          buildable = true;
          };
        };
      };
    }