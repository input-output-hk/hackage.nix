{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { llvm = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "mios"; version = "1.2.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Shuji Narazaki <narazaki@nagasaki-u.ac.jp>";
      author = "Shuji Narazaki <narazaki@nagasaki-u.ac.jp>";
      homepage = "https://github.com/shnarazk/mios";
      url = "";
      synopsis = "A Minisat-based SAT solver in Haskell";
      description = "A modern and fast SAT solver written in Haskell, based on Minisat-1.14 and 2.2.\nBy using CDCL, watch literals, VSIDS, restart, blocking-literals, LBD and so on,\nthe current version is only 1.8 time slower than Minisat-1.14.\n\"Mios\" is an abbreviation of /Minisat-based Implementation and Optimization Study on SAT solver/.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
        buildable = true;
        };
      exes = {
        "mios" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            ];
          buildable = true;
          };
        };
      };
    }