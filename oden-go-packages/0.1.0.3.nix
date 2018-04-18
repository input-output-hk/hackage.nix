{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "oden-go-packages";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "Oskar Wickström";
        maintainer = "Oskar Wickström <oskar.wickstrom@gmail.com>";
        author = "Oskar Wickström <oskar.wickstrom@gmail.com>";
        homepage = "http://oden-lang.org";
        url = "";
        synopsis = "Provides Go package metadata.";
        description = "Provides a Haskell interface to the Go package importer, enabling querying\nGo packages for definitions and their types.";
        buildType = "Custom";
      };
      components = {
        oden-go-packages = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
      };
    }