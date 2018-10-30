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
        name = "GLM";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "maydwell@gmail.com";
      author = "Lyndon Maydwell";
      homepage = "http://github.com/sordina/GLM";
      url = "";
      synopsis = "Simple Gridlab-D GLM parser and utilities.";
      description = "Simple Gridlab-D GLM parser and utilities.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.interpolate)
          (hsPkgs.bytestring)
          (hsPkgs.pureMD5)
          (hsPkgs.transformers)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-quickcheck2)
          (hsPkgs.QuickCheck)
          (hsPkgs.test-framework-th)
        ];
      };
      exes = {
        "glm2props" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.lens)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-th)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.pureMD5)
            (hsPkgs.interpolate)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.GLM)
          ];
        };
        "glm2dot" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.lens)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-th)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.pureMD5)
            (hsPkgs.interpolate)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.GLM)
          ];
        };
      };
      tests = {
        "test-glm" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.lens)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-th)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.mtl)
            (hsPkgs.GLM)
          ];
        };
      };
    };
  }