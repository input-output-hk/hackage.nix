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
        name = "hakyll-dhall";
        version = "0.2.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/hakyll-dhall#readme";
      url = "";
      synopsis = "Dhall compiler for Hakyll";
      description = "Hakyll compiler and loader for Dhall files.  Functions are intended to track\nall local dependencies within the project directory, so rebuilds are\nproperly triggered on up-stream imports.  Provides options for customizing\nrebuilding behavior for network, environment variable, and non-project local\nfiles.\n\nSee README.md for more information.";
      buildType = "Simple";
    };
    components = {
      "hakyll-dhall" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.cborg)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.dhall)
          (hsPkgs.filepath)
          (hsPkgs.hakyll)
          (hsPkgs.lens-family-core)
          (hsPkgs.mtl)
          (hsPkgs.prettyprinter)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "hakyll-dhall-test-app" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dhall)
            (hsPkgs.hakyll)
            (hsPkgs.hakyll-dhall)
          ];
        };
      };
    };
  }