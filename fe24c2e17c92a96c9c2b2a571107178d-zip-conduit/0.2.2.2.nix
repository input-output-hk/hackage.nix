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
      specVersion = "1.10";
      identifier = {
        name = "zip-conduit";
        version = "0.2.2.2";
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
      "zip-conduit" = {
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
          (hsPkgs.conduit-extra)
          (hsPkgs.resourcet)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.resourcet)
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
            (hsPkgs.directory)
            (hsPkgs.criterion)
            (hsPkgs.filepath)
            (hsPkgs.LibZip)
            (hsPkgs.random)
            (hsPkgs.temporary)
            (hsPkgs.zip-archive)
            (hsPkgs.zip-conduit)
          ];
        };
      };
    };
  }