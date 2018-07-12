{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "attomail";
          version = "0.1.0.1";
        };
        license = "BSD-2-Clause";
        copyright = "phlummox 2017";
        maintainer = "phlummox2@gmail.com";
        author = "phlummox";
        homepage = "";
        url = "";
        synopsis = "Minimal mail delivery agent (MDA) for local mail with maildir support";
        description = "Acts as a minimal (local delivery only, many features un-implemented) mail\ndelivery agent (or MDA), delivering mail to a local @maildir@ format spool.\nHandy when you don't want to install an MTA (Mail Transfer Agent) or\nfuller-featured MDA - you just want a program which accepts\n@sendmail@-style delivery of messages from local programs, and dumps them\nsomewhere you can read them.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "attomail" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.MissingH
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.parsec
              hsPkgs.random
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unix
              hsPkgs.unix-time
              hsPkgs.ConfigFile
              hsPkgs.email-validate
              hsPkgs.hsemail-ns
              hsPkgs.optparse-applicative
            ];
          };
        };
        tests = {
          "attomail-doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.Glob
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }