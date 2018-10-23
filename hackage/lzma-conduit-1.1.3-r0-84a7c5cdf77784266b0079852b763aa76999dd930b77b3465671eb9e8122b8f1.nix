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
        name = "lzma-conduit";
        version = "1.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nathan Howell <nhowell@alphaheavy.com>";
      author = "Nathan Howell <nhowell@alphaheavy.com>";
      homepage = "http://github.com/alphaHeavy/lzma-conduit";
      url = "";
      synopsis = "Conduit interface for lzma/xz compression.";
      description = "High level bindings to xz-utils.\n";
      buildType = "Simple";
    };
    components = {
      "lzma-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
        ];
        libs = [ (pkgs."lzma") ];
      };
      tests = {
        "lzma-test" = {
          depends  = [
            (hsPkgs.lzma-conduit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.resourcet)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }