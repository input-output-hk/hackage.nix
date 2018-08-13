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
        name = "servant-iCalendar";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Francesco Gazzetta <francygazz@gmail.com>";
      author = "Francesco Gazzetta <francygazz@gmail.com>";
      homepage = "https://github.com/fgaz/servant-iCalendar#readme";
      url = "";
      synopsis = "Servant support for iCalendar";
      description = "Servant support for iCalendar";
      buildType = "Simple";
    };
    components = {
      "servant-iCalendar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-media)
          (hsPkgs.servant)
          (hsPkgs.iCalendar)
          (hsPkgs.data-default)
        ];
      };
    };
  }