{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "quenya-verb";
          version = "0.0.1";
        };
        license = "AGPL-3.0-only";
        copyright = "Copyright (c) 2015 Kaashif Hymabaccus";
        maintainer = "kaashif@kaashif.co.uk";
        author = "Kaashif Hymabaccus";
        homepage = "";
        url = "";
        synopsis = "Quenya verb conjugator";
        description = "Web app that conjugates Quenya verbs. Uses Scotty to provide a\nRESTful API (but really it's just a single URL you POST to),\nand React.js for a sleek, web scale, flat, synergistic front end.\n\nInstall and run `quenya-verb-server --help` for some more\ninformation on running the program.\n\nSee <http://github.com/kaashif/quenya-verb> for more\ninformation on building the latest version from source, using\nthe API and so on.";
        buildType = "Simple";
      };
      components = {
        "quenya-verb" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.cond
            hsPkgs.MissingH
            hsPkgs.text
            hsPkgs.safe
            hsPkgs.aeson
            hsPkgs.warp
            hsPkgs.scotty
            hsPkgs.bytestring
            hsPkgs.wai
            hsPkgs.network
            hsPkgs.iproute
            hsPkgs.transformers
            hsPkgs.wai-extra
            hsPkgs.wai-middleware-static
            hsPkgs.cmdargs
            hsPkgs.directory
          ];
        };
        exes = {
          "quenya-verb-server" = {
            depends  = [
              hsPkgs.base
              hsPkgs.quenya-verb
            ];
          };
        };
      };
    }