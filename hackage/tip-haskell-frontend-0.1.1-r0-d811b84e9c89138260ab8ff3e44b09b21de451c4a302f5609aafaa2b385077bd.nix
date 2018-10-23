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
        name = "tip-haskell-frontend";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "danr@chalmers.se";
      author = "Dan Rosén";
      homepage = "http://tip-org.github.io";
      url = "";
      synopsis = "Convert from Haskell to Tip";
      description = "Convert from Haskell to Tip";
      buildType = "Simple";
    };
    components = {
      "tip-haskell-frontend" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.pretty)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.split)
          (hsPkgs.geniplate-mirror)
          (hsPkgs.tip-lib)
          (hsPkgs.QuickCheck)
        ];
      };
      exes = {
        "tip-ghc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tip-haskell-frontend)
            (hsPkgs.tip-lib)
            (hsPkgs.pretty-show)
            (hsPkgs.pretty)
          ];
        };
      };
    };
  }