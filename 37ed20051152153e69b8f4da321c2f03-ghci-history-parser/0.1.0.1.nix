{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      use_parsec = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghci-history-parser";
          version = "0.1.0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "phlummox2 at gmail dot com";
        author = "phlummox";
        homepage = "";
        url = "";
        synopsis = "parse output of ghci \":history\" command";
        description = "I couldn't see a simple parser for the output of the ghci @:history@\ncommand, with few dependencies, so here is one.\n\nIf Parsec is installed, this parser will use it, but if not, it will fall\nback on the parsers in \"Text.ParserCombinators.ReadP\", found in @base@.\n\nFor an example of use, see \"GHCi.History.Parse\".";
        buildType = "Simple";
      };
      components = {
        "ghci-history-parser" = {
          depends  = if _flags.use_parsec
            then [
              hsPkgs.base
              hsPkgs.parsec
            ]
            else [ hsPkgs.base ];
        };
        tests = {
          "ghci-history-parser-test" = {
            depends  = if _flags.use_parsec
              then [
                hsPkgs.base
                hsPkgs.hspec
                hsPkgs.ghci-history-parser
                hsPkgs.parsec
              ]
              else [
                hsPkgs.base
                hsPkgs.hspec
                hsPkgs.ghci-history-parser
              ];
          };
          "ghci-history-parser-doctest" = {
            depends  = if _flags.use_parsec
              then [
                hsPkgs.base
                hsPkgs.hspec
                hsPkgs.ghci-history-parser
                hsPkgs.parsec
                hsPkgs.doctest
              ]
              else [
                hsPkgs.base
                hsPkgs.hspec
                hsPkgs.ghci-history-parser
                hsPkgs.doctest
              ];
          };
        };
      };
    }