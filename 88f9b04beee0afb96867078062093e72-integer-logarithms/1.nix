{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      check-bounds = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "integer-logarithms";
        version = "1";
      };
      license = "MIT";
      copyright = "(c) 2011 Daniel Fischer";
      maintainer = "Andrew Lelechenko <andrew.lelechenko@gmail.com>, Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Daniel Fischer";
      homepage = "https://github.com/Bodigrim/integer-logarithms";
      url = "";
      synopsis = "Integer logarithms.";
      description = "\"Math.NumberTheory.Logarithms\" and \"Math.NumberTheory.Powers.Integer\"\nfrom the arithmoi package.\n\nAlso provides \"GHC.Integer.Logarithms.Compat\" and\n\"Math.NumberTheory.Power.Natural\" modules, as well as some\nadditional functions in migrated modules.";
      buildType = "Simple";
    };
    components = {
      "integer-logarithms" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.ghc-prim)
          (hsPkgs.integer-gmp)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.10")) (hsPkgs.nats);
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.integer-logarithms)
            (hsPkgs.tasty)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.smallcheck)
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.10")) (hsPkgs.nats);
        };
      };
    };
  }