{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stackage-upload";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/fpco/stackage-upload";
        url = "";
        synopsis = "A more secure version of cabal upload which uses HTTPS";
        description = "For more information, see <https://www.stackage.org/package/stackage-upload>";
        buildType = "Simple";
      };
      components = {
        stackage-upload = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.directory
            hsPkgs.filepath
          ];
        };
        exes = {
          stackage-upload = {
            depends  = [
              hsPkgs.base
              hsPkgs.stackage-upload
              hsPkgs.stackage-cli
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }