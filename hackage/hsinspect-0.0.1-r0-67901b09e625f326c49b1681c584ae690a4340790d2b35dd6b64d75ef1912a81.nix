{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "hsinspect"; version = "0.0.1"; };
      license = "GPL-3.0-or-later";
      copyright = "2019 Tseen She";
      maintainer = "Tseen She";
      author = "Tseen She";
      homepage = "";
      url = "";
      synopsis = "Inspect Haskell source files.";
      description = "Inspect @.hs@ files using the ghc api.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.ghc)
          (hsPkgs.ghc-boot)
          (hsPkgs.time)
          ];
        };
      exes = {
        "hsinspect" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.ghc)
            (hsPkgs.ghc-boot)
            (hsPkgs.time)
            (hsPkgs.ghc-paths)
            (hsPkgs.hsinspect)
            ];
          };
        };
      };
    }