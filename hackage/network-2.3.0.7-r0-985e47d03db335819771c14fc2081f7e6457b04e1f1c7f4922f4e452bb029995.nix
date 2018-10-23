{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "network";
        version = "2.3.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Johan Tibell <johan.tibell@gmail.com>";
      author = "";
      homepage = "http://github.com/haskell/network";
      url = "";
      synopsis = "Low-level networking interface";
      description = "Low-level networking interface";
      buildType = "Configure";
    };
    components = {
      "network" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.parsec)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      tests = {
        "simple" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
        "uri" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }