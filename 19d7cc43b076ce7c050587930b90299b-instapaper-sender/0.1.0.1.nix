{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "instapaper-sender";
          version = "0.1.0.1";
        };
        license = "AGPL-3.0-only";
        copyright = "2017 Michael Smith";
        maintainer = "michael@spinda.net";
        author = "Michael Smith";
        homepage = "https://github.com/spinda/instapaper-sender#readme";
        url = "";
        synopsis = "Basic HTTP gateway to save articles to Instapaper";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        exes = {
          instapaper-sender = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.data-default-class
              hsPkgs.HaskellNet
              hsPkgs.HaskellNet-SSL
              hsPkgs.http-types
              hsPkgs.network
              hsPkgs.scotty
              hsPkgs.text
              hsPkgs.wai
              hsPkgs.wai-extra
            ];
          };
        };
      };
    }