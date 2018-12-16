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
        name = "krpc";
        version = "0.2.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013, Sam Truzjan";
      maintainer = "Sam Truzjan <pxqr.sta@gmail.com>";
      author = "Sam Truzjan";
      homepage = "https://github.com/cobit/krpc";
      url = "";
      synopsis = "KRPC remote procedure call protocol implementation.";
      description = "KRPC remote procedure call protocol implementation.\n\n[/Release Notes/]\n\n* /0.1.0.0:/ Initial version.\n\n* /0.1.1.0:/ Allow passing raw argument\\/result dictionaries.\n\n* /0.2.0.0:/ Async API have been removed, use /async/ package instead.\nExpose caller address in handlers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.bencoding)
          (hsPkgs.network)
        ];
      };
      exes = {
        "test-server" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bencoding)
            (hsPkgs.krpc)
          ];
        };
        "bench-server" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.krpc)
          ];
        };
      };
      tests = {
        "test-client" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.bencoding)
            (hsPkgs.krpc)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
      benchmarks = {
        "bench-client" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.krpc)
          ];
        };
      };
    };
  }