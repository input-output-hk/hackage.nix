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
        name = "bits-bytestring-lazy";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016 Michael Carpenter";
      maintainer = "James Larisch <james@jameslarisch.com>";
      author = "Michael Carpenter, James Larisch";
      homepage = "https://github.com/semaj/bits-bytestring-lazy";
      url = "";
      synopsis = "Bits instance for lazy bytestrings.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "bits-bytestring-lazy" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bits)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "bits-bytestring-lazy-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bits)
            (hsPkgs.bits-bytestring-lazy)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "bits-bytestring-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.bits-bytestring)
          ];
        };
      };
    };
  }