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
      specVersion = "1.18";
      identifier = {
        name = "euler";
        version = "0.9.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "luis@decomputed.com";
      author = "Luis Rodrigues Soares";
      homepage = "https://github.com/decomputed/euler";
      url = "";
      synopsis = "Mathematics utilities for Haskell";
      description = "Mathematics utilities and functions for Haskell, currently aimed at solving problems in Project Euler.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.euler)
            (hsPkgs.hspec)
          ];
        };
        "hpc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.xml)
            (hsPkgs.directory)
          ];
        };
        "hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
          build-tools = [
            (hsPkgs.buildPackages.happy)
          ];
        };
        "haddock" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.regex-posix)
          ];
        };
      };
      benchmarks = {
        "criterion" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.euler)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }