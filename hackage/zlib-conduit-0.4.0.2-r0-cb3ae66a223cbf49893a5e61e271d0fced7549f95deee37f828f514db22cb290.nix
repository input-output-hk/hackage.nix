{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { debug = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "zlib-conduit";
        version = "0.4.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/conduit";
      url = "";
      synopsis = "Streaming compression/decompression via conduits.";
      description = "Streaming compression/decompression via conduits.";
      buildType = "Simple";
    };
    components = {
      "zlib-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.zlib-bindings)
          (hsPkgs.conduit)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.conduit)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.zlib-conduit)
            (hsPkgs.resourcet)
          ];
        };
      };
    };
  }