{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "flower";
          version = "0.7.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Ketil Malde <ketil@malde.org>";
        author = "Ketil Malde";
        homepage = "http://biohaskell.org/Applications/Flower";
        url = "";
        synopsis = "Analyze 454 flowgrams  (.SFF files)";
        description = "flower - FLOWgram ExtractoR tools\n\nThis is now obsolete, please install the biosff library\n(which includes the 'flower' exectuable) instead.\n\nThe flower executable reads files in SFF-format and produces various output,\nincluding sequences with quality, or flowgram data in tabular format.  By default,\nit outputs a textual representation of the data in the SFF-file, much like\n'sffinfo' from Roche does.\n\nThe flowselect executable extracts reads from SFF-files, generating a new\nSFF-file with a subset of the reads based on various quality criteria.\n\nThe flowt program removes (artificial) duplicates from SFF files.  It's currently a work\nin progress, but included if you'd like to play with it.  It's faster than other approaches\n(e.g. CD-HIT), and ought to be more sensitive and specific, but this needs to be proven.";
        buildType = "Simple";
      };
      components = {
        exes = {
          flower = {
            depends  = [
              hsPkgs.bio
              hsPkgs.base
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.random
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.mtl
            ];
          };
          flowselect = {
            depends  = [
              hsPkgs.bio
              hsPkgs.random
              hsPkgs.base
            ];
          };
          flowt = {
            depends  = [
              hsPkgs.bio
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.bytestring
            ];
          };
        };
      };
    }