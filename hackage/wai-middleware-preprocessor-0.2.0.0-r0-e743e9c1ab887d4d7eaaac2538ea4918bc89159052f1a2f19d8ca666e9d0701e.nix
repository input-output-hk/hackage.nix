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
      specVersion = "1.10";
      identifier = {
        name = "wai-middleware-preprocessor";
        version = "0.2.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Remy Goldschmidt <taktoa@gmail.com>";
      author = "Remy Goldschmidt <taktoa@gmail.com>";
      homepage = "https://github.com/taktoa/wai-middleware-preprocessor";
      url = "";
      synopsis = "WAI middleware for preprocessing static files";
      description = "WAI middleware that preprocesses and caches files (e.g.: for Fay, purescript, etc.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.wai-middleware-static)
        ];
      };
      tests = {
        "wai-middleware-preprocessor-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.wai-middleware-static)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }