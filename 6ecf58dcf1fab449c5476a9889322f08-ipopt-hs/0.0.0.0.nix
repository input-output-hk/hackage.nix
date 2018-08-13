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
      specVersion = "1.8";
      identifier = {
        name = "ipopt-hs";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Vogt <vogt.adam@gmail.com>";
      author = "Adam Vogt <vogt.adam@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "haskell binding to ipopt including automatic differentiation";
      description = "";
      buildType = "Simple";
    };
    components = {
      "ipopt-hs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.ad)
        ];
        pkgconfig = [
          (pkgconfPkgs.ipopt)
        ];
      };
      exes = {
        "ipopt-hs_Test1" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.ipopt-hs)
          ];
        };
        "ipopt-hs_Test2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.ipopt-hs)
          ];
        };
      };
    };
  }