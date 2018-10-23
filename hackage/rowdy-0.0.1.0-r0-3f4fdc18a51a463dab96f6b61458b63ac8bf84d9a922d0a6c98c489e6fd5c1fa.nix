{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rowdy";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Matt Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matt Parsons";
      homepage = "https://github.com/parsonsmatt/rowdy#readme";
      url = "";
      synopsis = "An EDSL for web application routes.";
      description = "Please see the README on Github at <https://github.com/parsonsmatt/rowdy#readme>";
      buildType = "Simple";
    };
    components = {
      "rowdy" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.dlist)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "specs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.dlist)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.rowdy)
          ];
        };
      };
    };
  }