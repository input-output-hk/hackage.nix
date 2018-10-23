{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "Rasenschach";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mwoehrle@arcor.de";
      author = "Martin Wöhrle";
      homepage = "http://patch-tag.com/r/martingw/Rasenschach/wiki/";
      url = "";
      synopsis = "Soccer simulation";
      description = "Soccer simulation with simple graphics and highly configurable AI";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Rasenschach" = {
          depends  = [
            (hsPkgs.SDL)
            (hsPkgs.SDL-gfx)
            (hsPkgs.SDL-image)
            (hsPkgs.SDL-mixer)
            (hsPkgs.SDL-ttf)
            (hsPkgs.Yampa)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.convertible)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.monad-loops)
            (hsPkgs.template-haskell)
            (hsPkgs.time)
          ];
        };
      };
    };
  }