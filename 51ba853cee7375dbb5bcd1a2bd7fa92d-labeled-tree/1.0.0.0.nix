{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "labeled-tree";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeanphilippe.bernardy@gmail.com";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Labeled tree structure";
        description = "Labeled tree structure, on the model of the standard Data.Tree";
        buildType = "Simple";
      };
      components = {
        labeled-tree = {
          depends  = [ hsPkgs.base ];
        };
      };
    }