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
      specVersion = "1.6.0";
      identifier = {
        name = "hack-handler-epoll";
        version = "0.1.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2010 Toralf Wittner";
      maintainer = "toralf.wittner@gmail.com";
      author = "Toralf Wittner";
      homepage = "http://github.com/twittner/hack-handler-epoll/";
      url = "";
      synopsis = "hack handler implementation using epoll";
      description = "Hack handler implemented using System.Linux.Epoll";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.hack)
          (hsPkgs.epoll)
          (hsPkgs.HTTP)
          (hsPkgs.data-default)
          (hsPkgs.network)
          (hsPkgs.failure)
          (hsPkgs.utf8-string)
          (hsPkgs.containers)
        ];
      };
    };
  }