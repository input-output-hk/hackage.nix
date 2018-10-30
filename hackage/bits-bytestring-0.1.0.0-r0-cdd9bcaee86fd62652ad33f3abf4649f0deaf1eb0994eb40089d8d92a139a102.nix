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
        name = "bits-bytestring";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016 Michael Carpenter";
      maintainer = "Michael Carpenter <oldmanmike.dev@gmail.com>";
      author = "Michael Carpenter";
      homepage = "https://github.com/oldmanmike/bits-bytestring";
      url = "";
      synopsis = "Bits instance for bytestrings.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bits)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "bits-bytestring-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bits)
            (hsPkgs.bits-bytestring)
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