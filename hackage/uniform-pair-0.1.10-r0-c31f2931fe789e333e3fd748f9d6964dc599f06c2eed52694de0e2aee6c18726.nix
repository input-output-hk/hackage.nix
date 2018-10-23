{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "uniform-pair";
        version = "0.1.10";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "https://github.com/conal/uniform-pair/";
      url = "";
      synopsis = "Uniform pairs with class instances";
      description = "Uniform pairs with class instances";
      buildType = "Simple";
    };
    components = {
      "uniform-pair" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ShowF)
          (hsPkgs.deepseq)
        ];
      };
    };
  }