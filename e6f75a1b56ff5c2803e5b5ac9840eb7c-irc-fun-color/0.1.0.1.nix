{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "irc-fun-color";
          version = "0.1.0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
        maintainer = "fr33domlover@riseup.net";
        author = "fr33domlover";
        homepage = "http://rel4tion.org/projects/irc-fun-color/";
        url = "";
        synopsis = "Add color and style decorations to IRC messages.";
        description = "An extension to IRC allows text formatting to be encoded into a message.\nColors and decorations (e.g. bold) are available. This library can encode\nthis formatting into a plain text message.";
        buildType = "Simple";
      };
      components = {
        "irc-fun-color" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.irc-fun-color
            ];
          };
        };
      };
    }