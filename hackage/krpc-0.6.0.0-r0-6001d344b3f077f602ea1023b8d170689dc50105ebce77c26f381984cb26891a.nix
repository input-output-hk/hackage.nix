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
        name = "krpc";
        version = "0.6.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2014 Sam Truzjan";
      maintainer = "Sam Truzjan <pxqr.sta@gmail.com>";
      author = "Sam Truzjan";
      homepage = "https://github.com/cobit/krpc";
      url = "";
      synopsis = "KRPC protocol implementation";
      description = "The KRPC protocol is a simple RPC mechanism consisting of bencoded\ndictionaries sent over UDP.\n\n<http://bittorrent.org/beps/bep_0005.html#krpc-protocol>";
      buildType = "Simple";
    };
    components = {
      "krpc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.data-default-class)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.bencoding)
          (hsPkgs.network)
          (hsPkgs.containers)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim);
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.network)
            (hsPkgs.mtl)
            (hsPkgs.monad-logger)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.bencoding)
            (hsPkgs.krpc)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.monad-logger)
            (hsPkgs.criterion)
            (hsPkgs.krpc)
          ];
        };
      };
    };
  }