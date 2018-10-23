{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "unordered-containers-rematch";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "tcrayford@gmail.com";
      author = "Tom Crayford";
      homepage = "http://github.com/tcrayford/rematch";
      url = "";
      synopsis = "Rematch support for unordered containers";
      description = "";
      buildType = "Simple";
    };
    components = {
      "unordered-containers-rematch" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unordered-containers)
          (hsPkgs.rematch)
          (hsPkgs.hashable)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.unordered-containers)
            (hsPkgs.rematch)
            (hsPkgs.hashable)
          ];
        };
      };
    };
  }