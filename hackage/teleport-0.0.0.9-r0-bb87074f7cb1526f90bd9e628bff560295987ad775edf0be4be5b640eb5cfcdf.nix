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
        name = "teleport";
        version = "0.0.0.9";
      };
      license = "MIT";
      copyright = "2010 Siddharth Bhat";
      maintainer = "siddu.druid@gmail.com";
      author = "Siddharth Bhat";
      homepage = "https://github.com/bollu/teleport#readme";
      url = "";
      synopsis = "A tool to quickly switch between directories";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "teleport" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "warp-haskell-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.warp-haskell)
            (hsPkgs.turtle)
            (hsPkgs.optparse-applicative)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
            (hsPkgs.configurator)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.ansi-terminal)
          ];
        };
      };
      tests = {
        "warp-haskell-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.warp-haskell)
          ];
        };
      };
    };
  }