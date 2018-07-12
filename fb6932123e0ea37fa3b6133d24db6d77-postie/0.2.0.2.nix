{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "postie";
          version = "0.2.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "alex.biehl@gmail.com";
        author = "Alex Biehl";
        homepage = "";
        url = "";
        synopsis = "A library to receive emails from within Haskell programs.";
        description = "`postie` is a little smtp server library for receiving emails. It is currently\nin a very early stage and not yet fully standard compatible although the standard\nprotocol is already supported.\n\n* At the time of writing parameters on smtp commands can not be parsed.\n\n* Handler functions need to return more detailed information to cancel a transaction.\n\n`postie` supportes hooks on key commands in an smtp session like\n\n* on connection open and close\n\n* on /MAIL FROM/ command e.g. to intercept transaction if sender is blacklisted\n\n* on /RCPT TO/ command e.g. to check if recipient is existent on your server\n\n* and many more\n\nTo run `postie` you only need to supply a function which takes a `Mail` and\nreturn `Accepted` or `Rejected`. `mailBody` is a `pipes` `Producer` which\nstreams the encoded body directly to your application code. The body is not\nparsed by `postie` since it depends on what the application wants to do with\nthe mail data. Eventually I will create a seperate package for parsing mime\nmessages with `pipes-parse` when postie becomes more stable and standard compliant.";
        buildType = "Simple";
      };
      components = {
        "postie" = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.tls
            hsPkgs.pipes
            hsPkgs.pipes-parse
            hsPkgs.attoparsec
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.cprng-aes
            hsPkgs.data-default-class
          ];
        };
        exes = {
          "postie-example-simple" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.tls
              hsPkgs.data-default-class
              hsPkgs.pipes
              hsPkgs.pipes-bytestring
              hsPkgs.postie
            ];
          };
        };
      };
    }