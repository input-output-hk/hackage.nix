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
      specVersion = "0";
      identifier = {
        name = "mohws";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Simon Marlow, Bjorn Bringert";
      maintainer = "Bjorn Bringert <bjorn@bringert.net>";
      author = "Simon Marlow, Bjorn Bringert";
      homepage = "http://code.haskell.org/mohws/";
      url = "";
      synopsis = "Modular Haskell Web Server";
      description = "A web server with a module system and support for CGI.\nBased on Simon Marlow's original Haskell Web Server.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hws" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.network)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            (hsPkgs.html)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.old-time)
            (hsPkgs.old-locale)
            (hsPkgs.array)
          ];
        };
      };
    };
  }