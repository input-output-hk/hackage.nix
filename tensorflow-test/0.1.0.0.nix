{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "tensorflow-test";
          version = "0.1.0.0";
        };
        license = "LicenseRef-Apache";
        copyright = "Google Inc.";
        maintainer = "tensorflow-haskell@googlegroups.com";
        author = "TensorFlow authors";
        homepage = "https://github.com/tensorflow/haskell#readme";
        url = "";
        synopsis = "Some common functions for test suites.";
        description = "This package provides common utility functions for the\nTensorFlow test suites.";
        buildType = "Simple";
      };
      components = {
        tensorflow-test = {
          depends  = [
            hsPkgs.base
            hsPkgs.HUnit
            hsPkgs.vector
          ];
        };
      };
    }