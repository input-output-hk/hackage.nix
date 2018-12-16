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
        name = "vinyl-gl";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Anthony Cowley";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "";
      url = "";
      synopsis = "Utilities for working with OpenGL's GLSL shading language and vinyl records.";
      description = "Using \"Data.Vinyl\" records (similar in spirit to @HList@)\nto carry GLSL uniform parameters and vertex data enables\nlibrary code to reflect over the types of the data to\nfacilitate interaction between Haskell and GLSL. See the\n@examples@ directory in the repository for more\ninformation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.vinyl)
          (hsPkgs.containers)
          (hsPkgs.GLUtil)
          (hsPkgs.OpenGL)
          (hsPkgs.tagged)
          (hsPkgs.vector)
          (hsPkgs.linear)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.linear)
            (hsPkgs.vinyl)
            (hsPkgs.vinyl-gl)
            (hsPkgs.OpenGL)
            (hsPkgs.tagged)
          ];
        };
      };
    };
  }