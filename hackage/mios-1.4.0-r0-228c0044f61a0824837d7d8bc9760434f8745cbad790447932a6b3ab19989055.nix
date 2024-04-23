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
    flags = { llvm = false; lib = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "mios"; version = "1.4.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Shuji Narazaki <narazaki@nagasaki-u.ac.jp>";
      author = "Shuji Narazaki <narazaki@nagasaki-u.ac.jp>";
      homepage = "https://github.com/shnarazk/mios";
      url = "";
      synopsis = "A Minisat-based SAT solver in Haskell";
      description = "A modern and fast SAT solver written in Haskell, based on Minisat-1.14 and 2.2.\nBy using CDCL, watch literals, VSIDS, restart, blocking-literals, LBD and so on.\nThe current version is only 2.0 time slower than Minisat-2.2.\n'Mios' is an abbreviation of 'Minisat-based Implementation and Optimization Study on SAT solver'.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = if flags.lib then true else false;
      };
      exes = {
        "mios" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }