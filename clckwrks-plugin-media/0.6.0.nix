{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "clckwrks-plugin-media";
          version = "0.6.0";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Jeremy Shaw, SeeReason Partners LLC";
        maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
        author = "Jeremy Shaw";
        homepage = "http://clckwrks.com/";
        url = "";
        synopsis = "media plugin for clckwrks";
        description = "";
        buildType = "Custom";
      };
      components = {
        clckwrks-plugin-media = {
          depends  = [
            hsPkgs.base
            hsPkgs.acid-state
            hsPkgs.attoparsec
            hsPkgs.blaze-html
            hsPkgs.clckwrks
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.gd
            hsPkgs.happstack-server
            hsPkgs.hsp
            hsPkgs.ixset
            hsPkgs.magic
            hsPkgs.mtl
            hsPkgs.reform
            hsPkgs.reform-happstack
            hsPkgs.reform-hsp
            hsPkgs.safecopy
            hsPkgs.text
            hsPkgs.web-plugins
            hsPkgs.web-routes
            hsPkgs.web-routes-th
          ];
        };
      };
    }