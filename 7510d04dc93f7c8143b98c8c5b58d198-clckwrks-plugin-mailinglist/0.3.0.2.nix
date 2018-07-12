{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "clckwrks-plugin-mailinglist";
          version = "0.3.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Jeremy Shaw, SeeReason Partners LLC";
        maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
        author = "Jeremy Shaw";
        homepage = "http://www.clckwrks.com/";
        url = "";
        synopsis = "mailing list plugin for clckwrks";
        description = "";
        buildType = "Simple";
      };
      components = {
        "clckwrks-plugin-mailinglist" = {
          depends  = [
            hsPkgs.base
            hsPkgs.acid-state
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.clckwrks
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.html-email-validate
            hsPkgs.filepath
            hsPkgs.happstack-authenticate
            hsPkgs.happstack-hsp
            hsPkgs.happstack-server
            hsPkgs.hsp
            hsPkgs.hsx2hs
            hsPkgs.HStringTemplate
            hsPkgs.ixset
            hsPkgs.lens
            hsPkgs.mime-mail
            hsPkgs.mtl
            hsPkgs.network-uri
            hsPkgs.reform
            hsPkgs.reform-happstack
            hsPkgs.reform-hsp
            hsPkgs.safecopy
            hsPkgs.text
            hsPkgs.time
            hsPkgs.uuid
            hsPkgs.uuid-orphans
            hsPkgs.web-plugins
            hsPkgs.web-routes
            hsPkgs.web-routes-th
          ];
        };
      };
    }