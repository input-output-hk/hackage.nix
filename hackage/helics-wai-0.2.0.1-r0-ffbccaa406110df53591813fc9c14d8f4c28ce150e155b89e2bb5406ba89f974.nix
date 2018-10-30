{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "helics-wai";
        version = "0.2.0.1";
      };
      license = "MIT";
      copyright = "(c) 2014 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/apiary";
      url = "";
      synopsis = "New Relic® agent SDK wrapper for wai.";
      description = "New Relic® agent SDK wrapper for wai.\n\nPlease read example: <https://github.com/philopon/helics/blob/master/helics-wai/example.hs>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.vault)
          (hsPkgs.helics)
        ];
      };
      exes = {
        "helics-wai-example" = {
          depends  = pkgs.lib.optionals (flags.example) [
            (hsPkgs.base)
            (hsPkgs.wai)
            (hsPkgs.helics-wai)
            (hsPkgs.warp)
            (hsPkgs.helics)
            (hsPkgs.vault)
            (hsPkgs.http-types)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }