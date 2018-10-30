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
        name = "avwx";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2016, Hans-Christian Esperer";
      maintainer = "Hans-Christian Esperer <hc@hcesperer.org>";
      author = "Hans-Christian Esperer <hc@hcesperer.org>";
      homepage = "https://github.com/hce/avwx";
      url = "";
      synopsis = "Parse METAR weather reports";
      description = "Parse METAR weather reports";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.HTTP)
          (hsPkgs.text)
        ];
      };
      exes = {
        "metar" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.avwx)
            (hsPkgs.pretty-show)
          ];
        };
      };
      tests = {
        "avwx-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.avwx)
            (hsPkgs.text)
          ];
        };
      };
    };
  }