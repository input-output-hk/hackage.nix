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
      specVersion = "1.10";
      identifier = {
        name = "rc";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Bogdan Penkovsky";
      maintainer = "dev () penkovsky dot com";
      author = "Bogdan Penkovsky";
      homepage = "https://github.com/masterdezign/rc#readme";
      url = "";
      synopsis = "Reservoir Computing, fast RNNs";
      description = "Please see the README on Github at <https://github.com/masterdezign/rc#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.Learning)
          (hsPkgs.base)
          (hsPkgs.dde)
          (hsPkgs.hmatrix)
          (hsPkgs.random)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "ntc" = {
          depends  = [
            (hsPkgs.Learning)
            (hsPkgs.base)
            (hsPkgs.dde)
            (hsPkgs.hmatrix)
            (hsPkgs.random)
            (hsPkgs.rc)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "rc-test" = {
          depends  = [
            (hsPkgs.Learning)
            (hsPkgs.base)
            (hsPkgs.dde)
            (hsPkgs.hmatrix)
            (hsPkgs.random)
            (hsPkgs.rc)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }