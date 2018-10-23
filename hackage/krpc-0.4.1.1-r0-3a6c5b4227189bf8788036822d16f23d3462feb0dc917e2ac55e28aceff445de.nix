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
        version = "0.4.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013, Sam Truzjan";
      maintainer = "Sam Truzjan <pxqr.sta@gmail.com>";
      author = "Sam Truzjan";
      homepage = "https://github.com/cobit/krpc";
      url = "";
      synopsis = "KRPC remote procedure call protocol implementation.";
      description = "KRPC remote procedure call protocol implementation.";
      buildType = "Simple";
    };
    components = {
      "krpc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
          (hsPkgs.bencoding)
          (hsPkgs.network)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim);
      };
      exes = {
        "test-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bencoding)
            (hsPkgs.krpc)
            (hsPkgs.network)
          ];
        };
        "bench-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.krpc)
            (hsPkgs.network)
          ];
        };
      };
      tests = {
        "test-client" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.bencoding)
            (hsPkgs.krpc)
            (hsPkgs.network)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
      benchmarks = {
        "bench-client" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.krpc)
            (hsPkgs.network)
          ];
        };
      };
    };
  }