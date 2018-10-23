{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "exceptions";
        version = "0.3.3";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (C) 2013 Edward A. Kmett\nCopyright (C) 2012 Google Inc.";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/exceptions/";
      url = "";
      synopsis = "Extensible optionally-pure exceptions";
      description = "Extensible optionally-pure exceptions";
      buildType = "Simple";
    };
    components = {
      "exceptions" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "exceptions-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }