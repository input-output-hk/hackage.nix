{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      tests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-cliff";
          version = "0.12.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2015-2016 Omari Norman";
        maintainer = "omari@smileystation.com";
        author = "Omari Norman";
        homepage = "http://www.github.com/massysett/pipes-cliff";
        url = "";
        synopsis = "Streaming to and from subprocesses using Pipes";
        description = "pipes-cliff helps you spawn subprocesses and send data to and\nfrom them with the Pipes library.\nSubprocesses are opened using the\nprocess library, and you stream data in and out using the various\nPipes abstractions.\n\nThough this library uses the Pipes library, I have not coordinated\nwith the author of the Pipes library in any way.  Any bugs or design\nflaws are mine and should be reported to\n\n<http://www.github.com/massysett/pipes-cliff/issues>\n\nFor more information, see the README.md file, which is located in the\nsource tarball and at\n\n<https://github.com/massysett/pipes-cliff>";
        buildType = "Simple";
      };
      components = {
        pipes-cliff = {
          depends  = [
            hsPkgs.base
            hsPkgs.pipes
            hsPkgs.pipes-safe
            hsPkgs.bytestring
            hsPkgs.process
            hsPkgs.async
            hsPkgs.stm
            hsPkgs.unix
          ];
        };
        exes = {
          numsToLess = {
            depends  = optionals _flags.tests [
              hsPkgs.base
              hsPkgs.pipes
              hsPkgs.pipes-safe
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.async
              hsPkgs.stm
              hsPkgs.unix
            ];
          };
          alphaNumbers = {
            depends  = optionals _flags.tests [
              hsPkgs.base
              hsPkgs.pipes
              hsPkgs.pipes-safe
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.async
              hsPkgs.stm
              hsPkgs.unix
            ];
          };
          limitedAlphaNumbers = {
            depends  = optionals _flags.tests [
              hsPkgs.base
              hsPkgs.pipes
              hsPkgs.pipes-safe
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.async
              hsPkgs.stm
              hsPkgs.unix
            ];
          };
          alphaNumbersByteString = {
            depends  = optionals _flags.tests [
              hsPkgs.base
              hsPkgs.pipes
              hsPkgs.pipes-safe
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.async
              hsPkgs.stm
              hsPkgs.unix
            ];
          };
          standardOutputAndError = {
            depends  = optionals _flags.tests [
              hsPkgs.base
              hsPkgs.pipes
              hsPkgs.pipes-safe
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.async
              hsPkgs.stm
              hsPkgs.unix
            ];
          };
        };
      };
    }