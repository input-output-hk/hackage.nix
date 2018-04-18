{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cef";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "utdemir@picussecurity.com";
        author = "Picus Security";
        homepage = "http://github.com/picussecurity/haskell-cef.git";
        url = "";
        synopsis = "CEF log format";
        description = "This library is used to produce CEF log lines";
        buildType = "Custom";
      };
      components = {
        cef = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.time
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.directory
              hsPkgs.filepath
            ];
          };
        };
      };
    }