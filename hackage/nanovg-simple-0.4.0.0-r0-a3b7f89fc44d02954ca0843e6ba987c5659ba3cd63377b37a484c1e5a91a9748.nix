{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      library-only = true;
    };
    package = {
      specVersion = "1.12";
      identifier = {
        name = "nanovg-simple";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Cthulhu (c) 2018";
      maintainer = "cthulhu.den@gmail.com";
      author = "Cthulhu";
      homepage = "https://github.com/CthulhuDen/nanovg-simple#readme";
      url = "";
      synopsis = "Simple interface to rendering with NanoVG";
      description = "Please see the README on GitHub at <https://github.com/CthulhuDen/nanovg-simple#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.GLFW-b)
          (hsPkgs.OpenGL)
          (hsPkgs.base)
          (hsPkgs.monad-loops)
          (hsPkgs.nanovg)
          (hsPkgs.safe-exceptions)
          (hsPkgs.text)
        ];
      };
      exes = {
        "nanovg-simple" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.nanovg)
            (hsPkgs.nanovg-simple)
            (hsPkgs.time)
          ];
        };
      };
    };
  }