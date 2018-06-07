{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "clckwrks";
          version = "0.19.2";
        };
        license = "BSD-3-Clause";
        copyright = "2012 SeeReason Partners LLC, Jeremy Shaw";
        maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
        author = "Jeremy Shaw";
        homepage = "http://www.clckwrks.com/";
        url = "";
        synopsis = "A secure, reliable content management system (CMS) and blogging platform";
        description = "clckwrks (pronounced, clockworks) aims to compete\ndirectly with popular PHP-based blogging and CMS\nplatforms. Clckwrks aims to support one-click\ninstallation of plugins and themes. End users\nshould be able to use it with zero Haskell\nknowledge. Haskell developers can extend clckwrks\nby creating new plugins or by building sites\naround the existing clckwrks core and plugins.\n\nclckwrks is still in very early development. Not all features have been implement yet.";
        buildType = "Custom";
      };
      components = {
        clckwrks = {
          depends  = [
            hsPkgs.acid-state
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.blaze-html
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.happstack-authenticate
            hsPkgs.happstack-hsp
            hsPkgs.happstack-server
            hsPkgs.happstack-server-tls
            hsPkgs.hsp
            hsPkgs.hsx-jmacro
            hsPkgs.ixset
            hsPkgs.jmacro
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.process
            hsPkgs.random
            hsPkgs.reform
            hsPkgs.reform-happstack
            hsPkgs.reform-hsp
            hsPkgs.safecopy
            hsPkgs.stm
            hsPkgs.tagsoup
            hsPkgs.text
            hsPkgs.time
            hsPkgs.uuid
            hsPkgs.unordered-containers
            hsPkgs.utf8-string
            hsPkgs.vector
            hsPkgs.web-plugins
            hsPkgs.web-routes
            hsPkgs.web-routes-happstack
            hsPkgs.web-routes-hsp
            hsPkgs.web-routes-th
            hsPkgs.xss-sanitize
          ];
        };
      };
    }