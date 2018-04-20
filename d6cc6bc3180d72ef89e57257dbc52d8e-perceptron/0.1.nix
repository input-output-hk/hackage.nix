{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "perceptron";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 Stefan Holdermans";
        maintainer = "stefan@vectorfabrics.com";
        author = "Stefan Holdermans";
        homepage = "";
        url = "";
        synopsis = "The perceptron learning algorithm.";
        description = "This package provides a straightforward implementation of the perceptron\nlearning algorithm for supervised binary linear classification.";
        buildType = "Simple";
      };
      components = {
        perceptron = {
          depends  = [ hsPkgs.base ];
        };
      };
    }