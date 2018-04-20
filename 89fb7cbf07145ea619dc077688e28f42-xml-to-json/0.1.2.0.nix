{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "xml-to-json";
          version = "0.1.2.0";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright Noam Lewis, 2014";
        maintainer = "jones.noamle@gmail.com";
        author = "Noam Lewis";
        homepage = "https://github.com/sinelaw/xml-to-json";
        url = "";
        synopsis = "Library and command line tool for converting XML files to json";
        description = "This library converts XMLs to json format, gaining readability while losing information such as comments, attribute ordering, and such.\nThe package also includes an executable to directly invoke the library on files (or urls on non-windows platforms).\nThe main purpose is to convert legacy XML-based data into a format that can be imported into JSON databases such as CouchDB and MongoDB.\n\nSee <https://github.com/sinelaw/xml-to-json#readme> for details and usage.";
        buildType = "Simple";
      };
      components = {
        xml-to-json = {
          depends  = [
            hsPkgs.base
            hsPkgs.hxt
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.hashable
            hsPkgs.vector
            hsPkgs.bytestring
            hsPkgs.hxt-tagsoup
            hsPkgs.hxt-expat
            hsPkgs.containers
            hsPkgs.regex-posix
          ] ++ pkgs.lib.optionals (!system.isWindows) [
            hsPkgs.hxt-curl
            hsPkgs.curl
          ];
        };
        exes = {
          xml-to-json = {
            depends  = [
              hsPkgs.base
              hsPkgs.xml-to-json
            ];
          };
        };
      };
    }