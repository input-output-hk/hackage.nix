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
      specVersion = "1.6";
      identifier = {
        name = "friendly-time";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@pbrisbin.com";
      author = "Patrick Brisbin";
      homepage = "http://github.com/pbrisbin/friendly-time";
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
    };
  }