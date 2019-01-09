{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "cabal-graphdeps"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "John Millikin <john@john-millikin.com>";
      author = "John Millikin <john@john-millikin.com>";
      homepage = "https://john-millikin.com/software/cabal-graphdeps/";
      url = "";
      synopsis = "Generate graphs of install-time Cabal dependencies";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal-graphdeps" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.options)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.split)
            (hsPkgs.temporary)
            ];
          };
        };
      };
    }