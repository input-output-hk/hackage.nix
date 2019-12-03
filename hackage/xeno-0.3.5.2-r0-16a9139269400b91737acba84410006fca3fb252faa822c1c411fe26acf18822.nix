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
    flags = { libxml2 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "xeno"; version = "0.3.5.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marco Zocca (ocramz fripost org)";
      author = "Christopher Done";
      homepage = "https://github.com/ocramz/xeno";
      url = "";
      synopsis = "A fast event-based XML parser in pure Haskell";
      description = "A fast, low-memory use, event-based XML parser in pure Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."mutable-containers" or (buildDepError "mutable-containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "xeno-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."xeno" or (buildDepError "xeno"))
            (hsPkgs."hexml" or (buildDepError "hexml"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "xeno-speed-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."xeno" or (buildDepError "xeno"))
            (hsPkgs."hexml" or (buildDepError "hexml"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."xml" or (buildDepError "xml"))
            (hsPkgs."hexpat" or (buildDepError "hexpat"))
            ] ++ (pkgs.lib).optional (flags.libxml2) (hsPkgs."libxml" or (buildDepError "libxml"));
          buildable = true;
          };
        "xeno-memory-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."xeno" or (buildDepError "xeno"))
            (hsPkgs."weigh" or (buildDepError "weigh"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hexml" or (buildDepError "hexml"))
            ];
          buildable = true;
          };
        };
      };
    }