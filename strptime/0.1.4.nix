{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "strptime";
          version = "0.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "Eugene Kirpichov";
        maintainer = "ekirpichov@gmail.com";
        author = "Eugene Kirpichov";
        homepage = "";
        url = "";
        synopsis = "Efficient parsing of LocalTime using a binding to C's strptime";
        description = "This library provides a binding to strptime, that allows to parse\ndates and times from strings and strict/lazy bytestrings. The library\ncreates LocalTime values.";
        buildType = "Simple";
      };
      components = {
        strptime = {
          depends  = [
            hsPkgs.time
            hsPkgs.bytestring
          ] ++ [ hsPkgs.base ];
        };
      };
    }