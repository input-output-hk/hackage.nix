{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      old-base = false;
      build-tests = false;
      bamsegen = false;
      hsdotnet = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bamse";
          version = "0.9.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sof@forkIO.com";
        author = "Sigbjorn Finne <sof@forkIO.com>";
        homepage = "";
        url = "";
        synopsis = "A Windows Installer (MSI) generator framework";
        description = "Bamse is a framework for building Windows Installers for\nyour Windows applications, giving you a comprehensive set\nof features to put together MSIs using Haskell.\n\nBamse lets you author /installer generators/, i.e., applications\nthat will generate Windows Installers when invoked (and pointed\nat the files and other resources to include for that particular\ninstaller instance.) Bamse is also accessible as a library, letting\nyou integrate MSI creation into your codebase.\n\nThe package has a number of example /templates/ showing how to\nspecify a generator; /real/ examples that have been used to ship\nsoftware by a number of projects and companies. See the @templates/@\ndirectory; one good way to get started is to modify one of these\nto suit the needs of the installers you are looking to create.\n\nFor a worked example of how to build installers from your Cabal packages,\nand possibly automatically install them when running the MSI, see @examples/Cabal.hs@\n(and the README in that directory.)";
        buildType = "Custom";
      };
      components = {
        "bamse" = {
          depends  = [
            hsPkgs.com
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.pretty
            hsPkgs.regex-compat
            hsPkgs.old-time
            hsPkgs.filepath
          ] ++ [ hsPkgs.base ];
        };
        exes = {
          "hsDotnetGen" = {};
          "bamseGen" = {};
          "runTests" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.HUnit
            ];
          };
        };
      };
    }