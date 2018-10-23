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
        version = "0.8.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2015 Edward A. Kmett\nCopyright (C) 2012 Google Inc.";
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
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "exceptions-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            (hsPkgs.mtl)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }