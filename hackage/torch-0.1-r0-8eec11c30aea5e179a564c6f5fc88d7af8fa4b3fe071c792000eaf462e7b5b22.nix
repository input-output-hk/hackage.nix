{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "torch";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nonowarn@gmail.com";
      author = "Yusaku Hashimoto";
      homepage = "http://patch-tag.com/repo/torch/home";
      url = "";
      synopsis = "Simple unit test library (or framework)";
      description = "Unit test writing and running with writer monads.";
      buildType = "Simple";
    };
    components = {
      "torch" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.QuickCheck)
          (hsPkgs.parallel)
        ];
      };
    };
  }