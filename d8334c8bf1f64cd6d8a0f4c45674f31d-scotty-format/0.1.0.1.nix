{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "scotty-format";
          version = "0.1.0.1";
        };
        license = "Apache-2.0";
        copyright = "2016 Giovanni Cappellotto";
        maintainer = "potomak84@gmail.com";
        author = "Giovanni Cappellotto";
        homepage = "https://github.com/potomak/scotty-format#readme";
        url = "";
        synopsis = "Response format helper for the Scotty web framework.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        scotty-format = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-media
            hsPkgs.http-types
            hsPkgs.scotty
            hsPkgs.text
          ];
        };
        exes = {
          scotty-format-example = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.scotty
              hsPkgs.scotty-format
              hsPkgs.text
            ];
          };
        };
        tests = {
          scotty-format-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.scotty-format
            ];
          };
        };
      };
    }