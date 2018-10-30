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
        name = "nagios-perfdata";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Anchor Systems";
      maintainer = "sio@tesser.org";
      author = "Sharif Olorin";
      homepage = "https://github.com/anchor/nagios-perfdata";
      url = "";
      synopsis = "Parse Nagios performance data.";
      description = "Provides an interface for parsing Nagios\nperformance data formatted according to the plugin\ndevelopment guidelines.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.attoparsec)
          (hsPkgs.bifunctors)
        ];
      };
      tests = {
        "perfdata-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.bytestring)
            (hsPkgs.nagios-perfdata)
            (hsPkgs.HUnit)
            (hsPkgs.MissingH)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }