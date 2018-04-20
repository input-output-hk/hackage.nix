{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Phsu";
          version = "0.1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "utkarsh.lath@gmail.com";
        author = "Utakrsh Lath";
        homepage = "localhost:9119";
        url = "";
        synopsis = "Personal Happstack Server Utils";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          Phsu = {
            depends  = [
              hsPkgs.base
              hsPkgs.happstack-server
              hsPkgs.happstack-server-tls
              hsPkgs.acid-state
              hsPkgs.blaze-html
              hsPkgs.text
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.network
              hsPkgs.regex-base
              hsPkgs.lifted-base
              hsPkgs.monad-control
              hsPkgs.safecopy
              hsPkgs.filepath
              hsPkgs.aeson
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.blaze-markup
              hsPkgs.process
              hsPkgs.curl
              hsPkgs.temporary
              hsPkgs.MissingH
              hsPkgs.regex-pcre
              hsPkgs.friendly-time
              hsPkgs.string-conversions
            ];
          };
        };
      };
    }