{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "rfc3339";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Hugo Daniel Gomes";
        maintainer = "Hugo Daniel Gomes <mr.hugo.gomes@gmail.com>";
        author = "Hugo Daniel Gomes <mr.hugo.gomes@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Parse and display time according to RFC 3339";
        description = "\nParse and display time according to\nRFC 3339 <http://www.ietf.org/rfc/rfc3339.txt>.\nThis package defines a type class to parse and read RFC 3339 from different\ndata types.\n\nRight now there is only support for reading and showing String.\n\nExample of usage:\n>\n> import Data.Time.LocalTime\n>\n> showTime :: IO String\n> showTime = getZonedTime >>= return . showRFC3339\n>\n> example1 = \"1985-04-12T23:20:50.52Z\"\n> example2 = \"1996-12-19T16:39:57-08:00\"\n> example3 = \"1990-12-31T23:59:60Z\"\n> example4 = \"1990-12-31T15:59:60-08:00\"\n> example5 = \"1937-01-01T12:00:27.87+00:20\"\n> examples = [example1,example2,exmaple3,example4,example5]\n>\n> readAll = map readRFC3339 examples\n\nFor more information please read the documentation of the module\nbellow.";
        buildType = "Simple";
      };
      components = {
        rfc3339 = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.old-locale
          ];
        };
      };
    }