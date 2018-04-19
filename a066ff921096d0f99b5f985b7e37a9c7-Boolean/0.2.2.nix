{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Boolean";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009-2013 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "";
        url = "";
        synopsis = "Generalized booleans and numbers";
        description = "Some classes for generalized boolean operations.\nStarting with 0.1.0, this package uses type families.\nUp to version 0.0.2, it used MPTCs with functional dependencies.\nMy thanks to Andy Gill for suggesting & helping with the change.\nThanks also to Alex Horsman for Data.Boolean.Overload and to\nJan Bracker for Data.Boolean.Numbers.\n\nCopyright 2009-2013 Conal Elliott; BSD3 license.";
        buildType = "Simple";
      };
      components = {
        Boolean = {
          depends  = [ hsPkgs.base ];
        };
      };
    }