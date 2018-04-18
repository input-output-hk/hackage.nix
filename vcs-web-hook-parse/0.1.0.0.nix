{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vcs-web-hook-parse";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
        maintainer = "fr33domlover@riseup.net";
        author = "fr33domlover";
        homepage = "http://rel4tion.org/projects/vcs-web-hook-parse/";
        url = "";
        synopsis = "Parse development platform web hook messages.";
        description = "A development platform is a server system which hosts (mostly software)\nprojects, version controlled repositories and often provides feature like\nissue tracking, merge requests, project search, project wikis and more.\n\nSome development platforms can report various events using web hooks, i.e.\nsend HTTP requests containing structured data (e.g. JSON or XML) to a\nspecified URL. Then you can run a server which receives these messages and\nreports them to IRC or a mailing list (or anything else you like).\n\nThis package collects development platform specific types, and functions\nwhich parse the HTTP message bodies into values of these types. Then an\nactual web hook handler can be written using them.\n\nWhy have a single package which handles the various platforms? First, because\nparsing some JSON or XML structures is a simple task requiring very little\ncode (thanks to awesome Haskell libraries), sometimes hardly worth having its\nown dedicated package. Second, having them all here may allow sharing types\nand perhaps even developing some common web hook formats in the future.\n\nThis package handles only /free-as-in-freedom/ development platforms. In\nparticular, it means g1thub won't be supported (until it becomes free too),\nwhile support for all free platforms (DarcsDen, Gogs, Kallithea, GitLab's\n\"community edition\", etc.) is very welcome.";
        buildType = "Simple";
      };
      components = {
        vcs-web-hook-parse = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
      };
    }