{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mega-sdist";
          version = "0.3.0.6";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/snoyberg/mega-sdist#readme";
        url = "";
        synopsis = "Handles uploading to Hackage from mega repos";
        description = "See README.md";
        buildType = "Simple";
      };
      components = {
        exes = {
          "mega-sdist" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.classy-prelude-conduit
              hsPkgs.conduit-extra
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.http-conduit
              hsPkgs.optparse-simple
              hsPkgs.tar-conduit
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.typed-process
              hsPkgs.yaml
            ];
          };
        };
      };
    }