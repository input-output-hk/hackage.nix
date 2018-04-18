{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "semiring-simple";
          version = "0.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014, Peter Harpending.";
        maintainer = "Peter Harpending <pharpend2@gmail.com>";
        author = "Thomas Wilke, Frank Huch, Sebastian Fischer, Peter Harpending";
        homepage = "";
        url = "";
        synopsis = "A module for dealing with semirings.";
        description = "Semirings are like normal rings, except you can't subtract. This library\nprovides a type class for semirings.";
        buildType = "Simple";
      };
      components = {
        semiring-simple = {
          depends  = [ hsPkgs.base ];
        };
      };
    }