{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "boolector";
        version = "0.0.0.7";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Deian Stefan <deian@cs.ucsd.edu>";
      author = "Dein Stefan, Johannes Waldmann, Armin Biere";
      homepage = "https://github.com/plsyssec/haskell-boolector";
      url = "";
      synopsis = "Haskell bindings for the Boolector SMT solver";
      description = "This library provides a high-level, monadic DSL for writing symbolic\ncomputations atop the Boolector SMT solver (<https://github.com/Boolector/boolector>).\n\nThe API and its description is defined in the \"Boolector\" module.\n\nSeveral examples can be found at: <https://github.com/PLSysSec/haskell-boolector/tree/master/test>";
      buildType = "Simple";
    };
    components = {
      "boolector" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.temporary)
          (hsPkgs.directory)
        ];
        libs = [ (pkgs."boolector") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      tests = {
        "API_Usage_Example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.boolector)
          ];
          libs = [ (pkgs."boolector") ];
        };
        "Array_Example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.boolector)
          ];
          libs = [ (pkgs."boolector") ];
        };
        "UF_Example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.boolector)
          ];
          libs = [ (pkgs."boolector") ];
        };
        "Arith_Example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.boolector)
          ];
          libs = [ (pkgs."boolector") ];
        };
        "Arith_Example2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.boolector)
          ];
          libs = [ (pkgs."boolector") ];
        };
        "Arith_Example3" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.boolector)
          ];
          libs = [ (pkgs."boolector") ];
        };
        "GetSetSymbol_Example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.boolector)
          ];
          libs = [ (pkgs."boolector") ];
        };
        "UF_Example2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.boolector)
          ];
          libs = [ (pkgs."boolector") ];
        };
      };
    };
  }