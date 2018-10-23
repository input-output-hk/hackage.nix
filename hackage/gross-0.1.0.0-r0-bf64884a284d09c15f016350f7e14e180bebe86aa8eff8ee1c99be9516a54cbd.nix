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
        name = "gross";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "sgschlesinger@gmail.com";
      author = "Samuel Schlesinger";
      homepage = "";
      url = "";
      synopsis = "A spoof on gloss for terminal animation";
      description = "An easy way to make terminal interfaces";
      buildType = "Simple";
    };
    components = {
      "gross" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ncurses)
          (hsPkgs.mtl)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.gross)
            (hsPkgs.base)
            (hsPkgs.ncurses)
            (hsPkgs.mtl)
            (hsPkgs.lens)
          ];
        };
      };
    };
  }