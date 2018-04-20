{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hpodder";
          version = "1.0.3";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright (c) 2006-2007 John Goerzen";
        maintainer = "John Goerzen <jgoerzen@complete.org>";
        author = "John Goerzen";
        homepage = "http://software.complete.org/hpodder";
        url = "";
        synopsis = "Podcast Aggregator (downloader)";
        description = "Podcasting is a method of publishing radio-like programs on the\nInternet.  Through podcasting, almost anyone can produce their own\naudio program, and publish episodes of it as often or as rarely as\nthey like.\n\nTo listen to podcasts, you need a program to download the podcast's\nepisodes from the Internet.  Such a program is called a podcatcher\n(or sometimes a podcast aggregator).  hpodder is this program.\n\nhpodder's features include:\n\nConvenient, easy to learn, and fast command-line interface.  It's\nsimple to do simple things, and advanced things are possible.\n\nAutomatic discovery of feed metadata\n\nFull history database for accurate prevention of duplicate\ndownloads and tracking of new episodes\n\nConversion tools to convert your existing feed list and history from\nother applications to hpodder.  Supported applications and formats\ninclude: castpodder and ipodder.\n\nMost operations can work fully automatically across your entire\npodcast database, or they can work manually.\n\nAutomatic updating of ID3 (v1 and v2) tags based on metadata in the\npodcast feed.  This important feature is available through iTunes but\nis often missed by other podcatchers.\n\nhpodder operations can be easily scripted or scheduled using regular\noperating system tools.\n\nFully customizable naming scheme for downloaded episodes, including a\nname collision detection and workaround algorithm.\n\nAutomatic support for appending .mp3 extensions to MP3 files that\nlack them.\n\nNumerous database and history inquiry tools\n\nSmall, minimalist footprint\n\nPower users and developers can interact directly with the embedded\nSqlite3 database used by hpodder.  The database has a simple schema\nthat is developer-friendly.\n\nSupport for resuming interrupted downloads of podcasts\n\nhpodder is SAFE and is designed with data integrity in mind from the\nbeginning.  It should be exceedingly difficult to lose a podcast\nepisode, even in the event of a power failure.";
        buildType = "Custom";
      };
      components = {
        exes = {
          hpodder = {
            depends  = [
              hsPkgs.haskell98
              hsPkgs.network
              hsPkgs.unix
              hsPkgs.parsec
              hsPkgs.MissingH
              hsPkgs.HDBC
              hsPkgs.HDBC-sqlite3
              hsPkgs.mtl
              hsPkgs.base
              hsPkgs.HaXml
              hsPkgs.hslogger
              hsPkgs.ConfigFile
              hsPkgs.filepath
            ];
          };
        };
      };
    }