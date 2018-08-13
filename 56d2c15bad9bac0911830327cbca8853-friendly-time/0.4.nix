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
        name = "friendly-time";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Pat Brisbin <pbrisbin@gmail.com>";
      author = "Pat Brisbin <pbrisbin@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Print time information in friendly ways";
      description = "Print time information in friendly ways";
      buildType = "Simple";
    };
    components = {
      "friendly-time" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.old-locale)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.friendly-time)
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ];
        };
      };
    };
  }