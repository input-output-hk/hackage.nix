{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hidden-char";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2017 Richard Cook";
        maintainer = "rcook@rcook.org";
        author = "Richard Cook";
        homepage = "https://github.com/rcook/hidden-char#readme";
        url = "";
        synopsis = "Provides getHiddenChar function";
        description = "Provides a @getHiddenChar@ function that works on Windows, Linux and macOS";
        buildType = "Simple";
      };
      components = {
        hidden-char = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          hidden-char-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
            ];
          };
        };
      };
    }