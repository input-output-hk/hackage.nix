{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stringable";
          version = "0.1.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "johnw@newartisans.com";
        author = "John Wiegley";
        homepage = "";
        url = "";
        synopsis = "A Stringable type class, in the spirit of Foldable and Traversable";
        description = "'Data.Stringable' provides a type class with a set of functions for\nconverting to and from the most often used string-linke types in\nHaskell.";
        buildType = "Simple";
      };
      components = {
        stringable = {
          depends  = [
            hsPkgs.base
            hsPkgs.system-filepath
            hsPkgs.text
            hsPkgs.bytestring
          ];
        };
      };
    }