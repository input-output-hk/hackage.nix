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
        name = "zip-conduit";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cherganov@gmail.com";
      author = "Tim Cherganov";
      homepage = "https://github.com/tymmym/zip-conduit";
      url = "";
      synopsis = "Working with zip archives via conduits.";
      description = "Working with zip archives via conduits.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.conduit)
          (hsPkgs.digest)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.old-time)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.utf8-string)
          (hsPkgs.zlib-conduit)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.hpc)
            (hsPkgs.mtl)
            (hsPkgs.temporary)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.time)
            (hsPkgs.zip-conduit)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.filepath)
            (hsPkgs.LibZip)
            (hsPkgs.random)
            (hsPkgs.temporary)
            (hsPkgs.transformers)
            (hsPkgs.zip-archive)
            (hsPkgs.zip-conduit)
          ];
        };
      };
    };
  }