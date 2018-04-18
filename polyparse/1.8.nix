{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "polyparse";
          version = "1.8";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "author";
        author = "Malcolm Wallace <Malcolm.Wallace@me.com>";
        homepage = "http://code.haskell.org/~malcolm/polyparse/";
        url = "";
        synopsis = "A variety of alternative parser combinator libraries.";
        description = "A variety of alternative parser combinator libraries, including\nthe original HuttonMeijer set.  The Poly sets have features like\ngood error reporting, arbitrary token type, running state, lazy\nparsing, and so on.  Finally, Text.Parse is a proposed\nreplacement for the standard Read class, for better\ndeserialisation of Haskell values from Strings.";
        buildType = "Simple";
      };
      components = {
        polyparse = {
          depends  = [
            hsPkgs.base
          ] ++ optionals compiler.isGhc [
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
      };
    }