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
        name = "conduit-zstd";
        version = "0.0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Luis Pedro Coelho";
      author = "Luis Pedro Coelho";
      homepage = "https://github.com/luispedro/conduit-zstd#readme";
      url = "";
      synopsis = "Conduit-based ZStd Compression";
      description = "Zstandard compression packaged as a conduit. This is a very thin wrapper around the [official hs-zstd interface](https://github.com/facebookexperimental/hs-zstd/)";
      buildType = "Simple";
    };
    components = {
      "conduit-zstd" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.zstd)
        ];
      };
      tests = {
        "conduit-zstd-test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit-extra)
            (hsPkgs.conduit-zstd)
            (hsPkgs.directory)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-th)
            (hsPkgs.zstd)
          ];
        };
      };
    };
  }