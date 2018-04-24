{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "clckwrks-plugin-page";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "2012, 2013 Jeremy Shaw, SeeReason Partners LLC";
        maintainer = "jeremy@n-heptane.com";
        author = "Jeremy Shaw";
        homepage = "http://www.clckwrks.com/";
        url = "";
        synopsis = "support for CMS/Blogging in clckwrks";
        description = "";
        buildType = "Custom";
      };
      components = {
        clckwrks-plugin-page = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.acid-state
            hsPkgs.attoparsec
            hsPkgs.clckwrks
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.happstack-authenticate
            hsPkgs.happstack-hsp
            hsPkgs.happstack-server
            hsPkgs.hsp
            hsPkgs.ixset
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.random
            hsPkgs.reform
            hsPkgs.reform-happstack
            hsPkgs.reform-hsp
            hsPkgs.safecopy
            hsPkgs.tagsoup
            hsPkgs.text
            hsPkgs.time
            hsPkgs.template-haskell
            hsPkgs.uuid
            hsPkgs.utf8-string
            hsPkgs.web-plugins
            hsPkgs.web-routes
            hsPkgs.web-routes-happstack
            hsPkgs.web-routes-th
          ];
          build-tools = [ hsPkgs.hsx2hs ];
        };
      };
    }