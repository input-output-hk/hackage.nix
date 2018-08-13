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
        name = "hdevtools";
        version = "0.1.0.3";
      };
      license = "MIT";
      copyright = "See AUTHORS file";
      maintainer = "mutantlemon@gmail.com";
      author = "Bit Connor";
      homepage = "https://github.com/bitc/hdevtools/";
      url = "";
      synopsis = "Persistent GHC powered background server for FAST haskell development tools";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hdevtools" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.syb)
            (hsPkgs.network)
            (hsPkgs.time)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }