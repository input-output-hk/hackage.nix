{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "polyparse";
          version = "1.4.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "author";
        author = "Malcolm Wallace <Malcolm.Wallace@cs.york.ac.uk>";
        homepage = "http://www.cs.york.ac.uk/fp/polyparse/";
        url = "";
        synopsis = "A variety of alternative parser combinator libraries.";
        description = "A variety of alternative parser combinator libraries, including\nthe original HuttonMeijer set.  The Poly sets have features like\ngood error reporting, arbitrary token type, running state, lazy\nparsing, and so on.  Finally, Text.Parse is a proposed\nreplacement for the standard Read class, for better\ndeserialisation of Haskell values from Strings.";
        buildType = "Simple";
      };
      components = {
        polyparse = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.bytestring;
        };
      };
    }