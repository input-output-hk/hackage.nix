{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "text-format-simple";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Dmitry Bespalov <bespalovdn@gmail.com>";
        author = "Dmitry Bespalov";
        homepage = "";
        url = "";
        synopsis = "Simple text formatting library.";
        description = "Tiny library dedicated for text formating in C# style.";
        buildType = "Simple";
      };
      components = {
        "text-format-simple" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }