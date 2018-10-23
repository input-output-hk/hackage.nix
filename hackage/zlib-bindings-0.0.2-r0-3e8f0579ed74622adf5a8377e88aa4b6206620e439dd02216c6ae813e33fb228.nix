{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "zlib-bindings";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/zlib-bindings";
      url = "";
      synopsis = "Low-level bindings to the zlib package.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "zlib-bindings" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.zlib)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.zlib)
            (hsPkgs.zlib-bindings)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }