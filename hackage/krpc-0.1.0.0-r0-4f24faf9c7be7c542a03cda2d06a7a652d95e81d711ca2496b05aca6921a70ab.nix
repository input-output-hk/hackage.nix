{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "krpc"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2013, Sam T.";
      maintainer = "Sam T. <pxqr.sta@gmail.com>";
      author = "Sam T.";
      homepage = "https://github.com/pxqr/krpc";
      url = "";
      synopsis = "KRPC remote procedure call protocol implementation.";
      description = "KRPC remote procedure call protocol implementation.\n\n[/Release Notes/]\n\n* /0.1.0.0:/ Initial version.";
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
          depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.krpc) ];
          };
        "bench-server" = {
          depends = [ (hsPkgs.base) (hsPkgs.krpc) (hsPkgs.bytestring) ];
          };
        };
      tests = {
        "test-client" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.filepath)
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
            (hsPkgs.krpc)
            (hsPkgs.criterion)
            (hsPkgs.bytestring)
            ];
          };
        };
      };
    }