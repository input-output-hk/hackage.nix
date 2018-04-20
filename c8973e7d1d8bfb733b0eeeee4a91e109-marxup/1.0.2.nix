{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "marxup";
          version = "1.0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jeanphilippe.bernardy@gmail.com";
        author = "Jean-Philippe Bernardy";
        homepage = "";
        url = "";
        synopsis = "Markup language preprocessor for Haskell";
        description = "Markup syntax preprocessor for Haskell. Steals ideas from the Scribble project (in Scheme).\nThe package also provides a DSL to output Latex seamlessly from MarXup output.";
        buildType = "Simple";
      };
      components = {
        marxup = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.labeled-tree
            hsPkgs.filepath
          ];
        };
        exes = {
          marxup = {
            depends  = [
              hsPkgs.base
              hsPkgs.pretty
              hsPkgs.parsec
            ];
          };
        };
      };
    }