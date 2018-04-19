{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "throttle";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Chris Done 2010";
        maintainer = "Chris Done <chrisdone@gmail.com>";
        author = "Chris Done <chrisdone@gmail.com>";
        homepage = "http://github.com/chrisdone/throttle";
        url = "";
        synopsis = "Throttle TCP/IPv4 connections to a given server.";
        description = "Sometimes you want to pretend you're on a\nvery slow connection to see how your program\ndeals with delays, this program does that.";
        buildType = "Simple";
      };
      components = {
        exes = {
          throttle = {
            depends  = [
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.network
              hsPkgs.cmdargs
              hsPkgs.bytestring
            ];
          };
        };
      };
    }