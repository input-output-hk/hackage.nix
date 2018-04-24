{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      curl = true;
      curl-pipelining = false;
      libwww = true;
      http = true;
      external-bytestring = true;
      external-zlib = true;
      haskeline = false;
      terminfo = true;
      curses = false;
      type-witnesses = false;
      color = true;
      base3 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "darcs";
          version = "2.1.2.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "<darcs-users@darcs.net>";
        author = "David Roundy <droundy@darcs.net>, <darcs-users@darcs.net>";
        homepage = "http://darcs.net/";
        url = "";
        synopsis = "a distributed, interactive, smart revision control system";
        description = "Darcs is a free, open source revision control\nsystem. It is:\n\n* Distributed: Every user has access to the full\ncommand set, removing boundaries between server and\nclient or committer and non-committers.\n\n* Interactive: Darcs is easy to learn and efficient to\nuse because it asks you questions in response to\nsimple commands, giving you choices in your work\nflow. You can choose to record one change in a file,\nwhile ignoring another. As you update from upstream,\nyou can review each patch name, even the full \"diff\"\nfor interesting patches.\n\n* Smart: Originally developed by physicist David\nRoundy, darcs is based on a unique algebra of\npatches.\n\nThis smartness lets you respond to changing demands\nin ways that would otherwise not be possible. Learn\nmore about spontaneous branches with darcs.";
        buildType = "Custom";
      };
      components = {
        exes = {
          darcs = {
            depends  = (((((([
              hsPkgs.base
              hsPkgs.regex-compat
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.html
              hsPkgs.filepath
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ (if _flags.base3
              then [
                hsPkgs.base
                hsPkgs.old-time
                hsPkgs.directory
                hsPkgs.process
                hsPkgs.containers
                hsPkgs.array
                hsPkgs.random
              ]
              else [
                hsPkgs.base
              ])) ++ pkgs.lib.optionals (!_flags.curl && (!_flags.libwww && _flags.http)) [
              hsPkgs.network
              hsPkgs.HTTP
            ]) ++ pkgs.lib.optional _flags.external-bytestring hsPkgs.bytestring) ++ pkgs.lib.optional _flags.external-zlib hsPkgs.zlib) ++ pkgs.lib.optional _flags.terminfo hsPkgs.terminfo) ++ pkgs.lib.optional _flags.haskeline hsPkgs.haskeline;
            libs = (pkgs.lib.optional _flags.curl pkgs.curl ++ pkgs.lib.optional (!_flags.external-zlib) pkgs.z) ++ pkgs.lib.optional _flags.curses pkgs.curses;
            pkgconfig = pkgs.lib.optional (_flags.curl && _flags.curl-pipelining) pkgconfPkgs.libcurl;
            build-tools = pkgs.lib.optional (!_flags.curl && _flags.libwww) hsPkgs.libwww-config;
          };
        };
      };
    }