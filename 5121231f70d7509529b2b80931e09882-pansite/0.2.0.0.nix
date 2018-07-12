{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pansite";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "2017-2018 Richard Cook";
        maintainer = "rcook@rcook.org";
        author = "Richard Cook";
        homepage = "https://github.com/rcook/pansite#readme";
        url = "";
        synopsis = "Pansite: a simple web site management tool";
        description = "Pansite is a Pandoc-based web site management tool. Please see README.md";
        buildType = "Simple";
      };
      components = {
        "pansite" = {
          depends  = [
            hsPkgs.MissingH
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.shake
            hsPkgs.split
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.yaml
          ];
        };
        exes = {
          "pansite" = {
            depends  = [
              hsPkgs.MissingH
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.blaze-html
              hsPkgs.bytestring
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.http-types
              hsPkgs.optparse-applicative
              hsPkgs.pandoc
              hsPkgs.pandoc-types
              hsPkgs.pansite
              hsPkgs.shake
              hsPkgs.split
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unordered-containers
              hsPkgs.vcs-revision
              hsPkgs.wai
              hsPkgs.wai-logger
              hsPkgs.warp
            ];
          };
        };
        tests = {
          "pansite-doctest" = {
            depends  = [
              hsPkgs.Glob
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
          "pansite-spec" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.pansite
            ];
          };
        };
      };
    }