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
      specVersion = "1.18";
      identifier = {
        name = "time-qq";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Marie <christian@ponies.io>";
      maintainer = "Christian Marie <christian@ponies.io>";
      author = "Christian Marie <christian@ponies.io>";
      homepage = "https://github.com/christian-marie/time-qq";
      url = "";
      synopsis = "Quasi-quoter for UTCTime times";
      description = "Quasi-quoter for UTCTime times";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.old-locale)
        ];
      };
      tests = {
        "unit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.time-qq)
          ];
        };
      };
    };
  }