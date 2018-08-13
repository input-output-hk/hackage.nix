{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "symengine";
        version = "0.1.2.0";
      };
      license = "MIT";
      copyright = "2016 Siddharth Bhat";
      maintainer = "siddu.druid@gmail.com";
      author = "Siddharth Bhat";
      homepage = "http://github.com/symengine/symengine.hs#readme";
      url = "";
      synopsis = "SymEngine symbolic mathematics engine for Haskell";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "symengine" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "symengine-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.symengine)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
          libs = [
            (pkgs.symengine)
            (pkgs.stdc++)
            (pkgs.gmpxx)
            (pkgs.gmp)
          ];
        };
      };
    };
  }