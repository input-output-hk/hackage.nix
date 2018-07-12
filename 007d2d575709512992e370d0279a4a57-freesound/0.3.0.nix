{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "freesound";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Stefan Kersten 2008-2016";
        maintainer = "Stefan Kersten <kaoskorobase@gmail.com>";
        author = "Stefan Kersten <kaoskorobase@gmail.com>";
        homepage = "https://github.com/kaoskorobase/freesound";
        url = "";
        synopsis = "Access the Freesound Project database";
        description = "Access the Freesound Project database. The Freesound\nProject is a collaborative database of Creative Commons\nlicensed sounds.\n\n<http://www.freesound.org/>\n\n<http://www.creativecommons.org/>";
        buildType = "Simple";
      };
      components = {
        "freesound" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.filepath
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.network-uri
            hsPkgs.old-locale
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.wreq
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.freesound
              hsPkgs.hspec
              hsPkgs.hspec-core
            ];
          };
        };
      };
    }