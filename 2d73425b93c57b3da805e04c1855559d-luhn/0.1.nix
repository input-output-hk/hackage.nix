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
      specVersion = "1.2";
      identifier = {
        name = "luhn";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 N-Sim Ltd.";
      maintainer = "jhb@n-sim.com";
      author = "Henry Bucklow";
      homepage = "";
      url = "";
      synopsis = "An implementation of Luhn's check digit algorithm.";
      description = "An implementation of Luhn's check digit algorithm.";
      buildType = "Custom";
    };
    components = {
      "luhn" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }