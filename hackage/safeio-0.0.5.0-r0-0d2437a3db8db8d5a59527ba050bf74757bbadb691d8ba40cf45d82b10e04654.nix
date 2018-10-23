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
        name = "safeio";
        version = "0.0.5.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Luis Pedro Coelho";
      author = "Luis Pedro Coelho";
      homepage = "https://github.com/luispedro/safeio#readme";
      url = "";
      synopsis = "Write output to disk atomically";
      description = "This package implements utilities to perform atomic output so as to avoid the problem of partial intermediate files.";
      buildType = "Simple";
    };
    components = {
      "safeio" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.resourcet)
          (hsPkgs.unix)
        ];
      };
      tests = {
        "safeiotest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.resourcet)
            (hsPkgs.unix)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-th)
          ];
        };
      };
    };
  }