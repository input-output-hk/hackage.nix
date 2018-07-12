{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskbot-core";
          version = "0.0.1.1";
        };
        license = "MIT";
        copyright = "(c) 2014 Jonathan Childress";
        maintainer = "Jonathan Childress <jon@childr.es>";
        author = "";
        homepage = "https://github.com/jonplussed/haskbot-core";
        url = "";
        synopsis = "Easily-extensible chatbot for Slack messaging service";
        description = "Haskbot melds together the Slack /slash command/ and /incoming/ API\nintegrations to create an easily-extensible platform for adding your own\ncustom /slash commands/ with arbitrary responses to your team's Slack\nservice.\n\nSure, Hubot exists, but when I desire custom chatbot functionality, I'd rather\nwrite nice, clean Haskell than clunky Javascript any day of the week.";
        buildType = "Simple";
      };
      components = {
        "haskbot-core" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.connection
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.monads-tf
            hsPkgs.scotty
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.time
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.connection
              hsPkgs.hspec
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.monads-tf
              hsPkgs.scotty
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.time
            ];
          };
        };
      };
    }