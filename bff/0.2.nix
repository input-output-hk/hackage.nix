{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      binaries = false;
      stats = false;
      render = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bff";
          version = "0.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Janis Voigtlaender";
        author = "Janis Voigtlaender, Joachim Breitner";
        homepage = "";
        url = "";
        synopsis = "Bidirectionalization for Free! (POPL'09)";
        description = "This is an implementation of the ideas presented in \"Bidirectionalization\nfor Free!\" (paper at POPL'09) by Janis Voigtlaender.\n\nIt also includes an automatic deriver for the Zippable type class.\n\nUsing the cabal flag \"binaries\" will enable the creation of a web frontend\nto bff, in the form of a CGI program. Make sure you understand the\nsecurity implications before allowing untrusted access to the script.\n\nUsing the cabal flag \"stats\" will generate programs that collect performance\nstatistics about bff and print them as a table.\n\nUsing the cabal flag \"render\" will generate a program that renders collected\nperformance statistics as PDF files.";
        buildType = "Simple";
      };
      components = {
        bff = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.category-extras
            hsPkgs.derive
            hsPkgs.haskell98
            hsPkgs.bimap
            hsPkgs.unix
          ];
        };
        exes = {
          bff-shell = {
            depends  = optionals _flags.binaries [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.hint
            ];
          };
          bff-cgi = {
            depends  = optionals _flags.binaries [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.xhtml
              hsPkgs.cgi
              hsPkgs.hint
              hsPkgs.utf8-string
            ];
          };
          bff-stats = {
            depends  = pkgs.lib.optional _flags.stats hsPkgs.benchpress;
          };
          bff-stats-print = {};
          bff-stats-render = {
            depends  = pkgs.lib.optional _flags.render hsPkgs.Chart;
          };
        };
      };
    }