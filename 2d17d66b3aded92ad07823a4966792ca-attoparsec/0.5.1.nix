{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
      applicative-in-base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "attoparsec";
          version = "0.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "";
        url = "";
        synopsis = "Combinator parsing with Data.ByteString.Lazy";
        description = "Fast, flexible text-oriented parsing of lazy ByteStrings.";
        buildType = "Simple";
      };
      components = {
        attoparsec = {
          depends  = (if _flags.split-base
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
            ]) ++ [ hsPkgs.base ];
        };
      };
    }