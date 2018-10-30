{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "darcswatch";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
      author = "Joachim Breitner";
      homepage = "http://darcswatch.nomeata.de/";
      url = "";
      synopsis = "Track application of Darcs patches";
      description = "DarcsWatch is a tool to track the state of darcs patches\nthat have been submitted to some project, usually by\nusing the \"darcs send\" command. It allows both submitters\nand project maintainers to get an overview of patches that\nhave been submitted but not yet applied. Some notable features are:\n\n* Reads both darcs1 and darcs2.0 (hashed) format repositories.\n\n* Displays patch summaries per user and per repository.\n\n* Patch diff can be reviewed directly.\n\n* Download link for each patch, to apply without searching for the email.\n\n* Knows about inverse and amend-recorded patches and uses them to consider\npatches obsolete.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "darcswatch" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.old-time)
            (hsPkgs.Crypto)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.xhtml)
            (hsPkgs.unix)
            (hsPkgs.directory)
            (hsPkgs.nano-md5)
            (hsPkgs.zlib)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }