{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "broadcast-chan"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014 Merijn Verstraaten";
      maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
      author = "Merijn Verstraaten";
      homepage = "https://github.com/merijn/broadcast-chan";
      url = "";
      synopsis = "Broadcast channel type that avoids 0 reader space leaks.";
      description = "A variation of \"Control.Concurrent.Chan\" from base, which allows to the\neasy creation of broadcast channels without the space-leaks that may arise\nfrom using 'Control.Concurrent.Chan.dupChan'.\nThe 'Control.Concurrent.Chan.Chan' type from \"Control.Concurrent.Chan\"\nconsists of both a read and write end. This presents a problem when one\nwants to have a broadcast channel that, at times, has zero listeners. To\nwrite to a 'Control.Concurrent.Chan.Chan' there must always be a read end\nand this read end will hold ALL messages alive until read.\nThe simple solution applied in this module is to separate read and write\nends. As a result, any messages written to the write end can be immediately\ngarbage collected if there are no active read ends, avoding space leaks.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }