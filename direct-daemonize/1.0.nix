{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "direct-daemonize";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2009 Dan Knapp";
        maintainer = "dankna@gmail.com";
        author = "Dan Knapp";
        homepage = "http://dankna.com/software/";
        url = "";
        synopsis = "Library to switch to daemon mode using built-in OS facilities.";
        description = "This package is a wrapper around the daemon() function on BSD-like Unices,\nincluding Mac OS X and glibc-based Linux distributions.  It does not function on\nother systems.";
        buildType = "Simple";
      };
      components = {
        direct-daemonize = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
          ];
        };
      };
    }