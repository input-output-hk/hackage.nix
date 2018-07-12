{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "AC-Vector";
          version = "1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "MathematicalOrchid@hotmail.com";
        author = "Andrew Coppin";
        homepage = "";
        url = "";
        synopsis = "Efficient geometric vectors.";
        description = "This Haskell library implements several small vectors types\nwith @Double@ fields, with seperate types for each size of\nvector, and a type class for handling vectors generally.\nChanges:\n* Operator '*<>' has been renamed '|*' (and there's a\nmatching '*|' operator now too).\n* There is now a 'vnormalise' function.";
        buildType = "Simple";
      };
      components = {
        "AC-Vector" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }