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
        name = "nmis-parser";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Sasa Bogicevic";
      maintainer = "brutallesale@gmail.com";
      author = "Sasa Bogicevic";
      homepage = "https://github.com/v0d1ch/nmis-parser#readme";
      url = "";
      synopsis = "NMIS file parser";
      description = "Parser for __NMIS__ (Network Management Information System) files to record type. Main module to use is __Text.Nmis__ and __parseNmis__ function";
      buildType = "Simple";
    };
    components = {
      "nmis-parser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.megaparsec)
        ];
      };
      tests = {
        "nmis-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Nmis)
          ];
        };
      };
    };
  }