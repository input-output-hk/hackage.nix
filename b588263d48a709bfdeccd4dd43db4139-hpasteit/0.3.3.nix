{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hpasteit";
          version = "0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012 Patrick Palka";
        maintainer = "patrick@parcs.ath.cx";
        author = "Patrick Palka";
        homepage = "http://github.com/parcs/hpasteit";
        url = "";
        synopsis = "A command-line client for hpaste.org";
        description = "HPasteIt is a command-line client for hpaste.org\n\nRun @hpasteit --help@ for usage information and @hpasteit COMMAND --help@ for\ndetailed usage information about a particular command.\n\nChanges in 0.3.3\n\n* Don't try to upload an empty paste\n* Bump dependencies\n\nChanges in 0.3.2\n\n* HTTP connections now actually time out after 60 seconds\n\nChanges in 0.3.1\n\n* HTTP connections now time out after 60 seconds instead of 5 seconds\n\n* shortened version number to three sequences\n\nChanges in 0.3.0.0\n\n* 'paste' is now the default command, so you can upload a paste by simply doing\n@hpasteit mypaste.hs@\n\n* hpasteit now infers the title and language of the paste\n\n* hpasteit now reads from @\\\$HPASTE_AUTHOR@ to set the author if no author\nis explicitly provided\n\n* channels can be inputted without the leading hash-bangs\n\nChanges in 0.2.4.0\n\n* made the program unicode-aware\n\n* changed default title from \"via HPasteIt\" to \"(no title)\"";
        buildType = "Simple";
      };
      components = {
        exes = {
          hpasteit = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.lifted-base
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.optparse-applicative
              hsPkgs.process
              hsPkgs.network
              hsPkgs.directory
              hsPkgs.safe
              hsPkgs.utf8-string
              hsPkgs.filepath
            ];
          };
        };
      };
    }