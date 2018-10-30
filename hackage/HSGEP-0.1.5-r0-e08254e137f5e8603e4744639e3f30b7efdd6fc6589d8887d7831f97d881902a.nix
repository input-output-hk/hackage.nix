{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "HSGEP";
        version = "0.1.5";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2012 Matthew Sottile";
      maintainer = "Matthew Sottile <mjsottile@computer.org>";
      author = "Matthew Sottile";
      homepage = "http://github.com/mjsottile/hsgep/";
      url = "";
      synopsis = "Gene Expression Programming evolutionary algorithm in Haskell";
      description = "Gene Expression Programming evolutionary algorithm implemented\nin Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.mersenne-random-pure64)
          (hsPkgs.monad-mersenne-random)
          (hsPkgs.vector)
          (hsPkgs.split)
        ];
      };
      exes = {
        "HSGEP_Regression" = {
          depends  = [ (hsPkgs.csv) ];
        };
        "HSGEP_CADensity" = {};
      };
    };
  }