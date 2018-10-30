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
        name = "system-locale";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016-2017";
      maintainer = "moritz.kiefer@purelyfunctional.org";
      author = "Moritz Kiefer";
      homepage = "https://github.com/cocreature/system-locale";
      url = "";
      synopsis = "Get system locales";
      description = "Get system locales in a format suitable for the time library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "system-locale-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.system-locale)
          ];
        };
      };
    };
  }