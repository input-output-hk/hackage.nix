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
        name = "lacroix";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/lacroix";
      url = "";
      synopsis = "fizzy n dizzy";
      description = "crack open a cold one with the boys";
      buildType = "Simple";
    };
    components = {
      "lacroix" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }