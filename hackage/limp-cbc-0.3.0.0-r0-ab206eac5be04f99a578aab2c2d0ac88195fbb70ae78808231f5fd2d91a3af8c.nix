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
      identifier = { name = "limp-cbc"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "amos.robinson@gmail.com";
      author = "Amos Robinson";
      homepage = "https://github.com/amosr/limp-cbc";
      url = "";
      synopsis = "bindings for integer linear programming solver Coin/CBC";
      description = "very simple binding to external solver, CBC.\nCBC is somewhat faster than GLPK, and also has a more permissive licence.\nrelies on coin/cbc version 2.8.6.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."limp" or (buildDepError "limp"))
          ];
        libs = [
          (pkgs."Cbc" or (sysDepError "Cbc"))
          (pkgs."Clp" or (sysDepError "Clp"))
          (pkgs."CbcSolver" or (sysDepError "CbcSolver"))
          (pkgs."Cgl" or (sysDepError "Cgl"))
          (pkgs."Osi" or (sysDepError "Osi"))
          (pkgs."OsiCbc" or (sysDepError "OsiCbc"))
          (pkgs."OsiClp" or (sysDepError "OsiClp"))
          (pkgs."OsiCommonTests" or (sysDepError "OsiCommonTests"))
          (pkgs."CoinUtils" or (sysDepError "CoinUtils"))
          (pkgs."CoinMP" or (sysDepError "CoinMP"))
          (pkgs."stdc++" or (sysDepError "stdc++"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."limp" or (buildDepError "limp"))
            (hsPkgs."limp-cbc" or (buildDepError "limp-cbc"))
            ];
          buildable = true;
          };
        };
      };
    }