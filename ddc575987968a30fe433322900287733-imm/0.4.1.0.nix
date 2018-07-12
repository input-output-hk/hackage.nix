{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "imm";
          version = "0.4.1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "koral att mailoo dott org";
        author = "kamaradclimber, koral";
        homepage = "";
        url = "";
        synopsis = "Retrieve RSS/Atom feeds and write one mail per new item in a maildir.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "imm" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.cmdargs
            hsPkgs.cond
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.dyre
            hsPkgs.feed
            hsPkgs.filepath
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.mime-mail
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.opml
            hsPkgs.random
            hsPkgs.text
            hsPkgs.text-icu
            hsPkgs.time
            hsPkgs.timerep
            hsPkgs.tls
            hsPkgs.utf8-string
            hsPkgs.xdg-basedir
            hsPkgs.xml
          ];
        };
        exes = {
          "imm" = {
            depends  = [
              hsPkgs.imm
              hsPkgs.base
            ];
          };
        };
      };
    }