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
      specVersion = "1.8";
      identifier = {
        name = "phraskell";
        version = "0.1.4";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "dimitri.sabadie@gmail.com";
      author = "Dimitri Sabadie";
      homepage = "https://github.com/skypers/phraskell";
      url = "";
      synopsis = "A fractal viewer.";
      description = "A fractal viewer with some cool features like changing colorscheme, screenshot, buddhabrot, and so on.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "phraskell" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.SDL)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }