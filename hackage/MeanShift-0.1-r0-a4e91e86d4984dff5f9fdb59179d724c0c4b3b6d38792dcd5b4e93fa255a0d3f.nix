{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "MeanShift";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aleator@gmail.com";
      author = "Ville Tirronen";
      homepage = "";
      url = "";
      synopsis = "Mean shift algorithm";
      description = "Mean shift is a general, non-parametric feature-space analysis tool. It can be used\nfor clustering, segmentation, filtering, object tracking, and even optimization. This package aims to\nprovide a basic, easy to use version of the method.";
      buildType = "Simple";
    };
    components = {
      "MeanShift" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
        ];
      };
    };
  }