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
        name = "epoll";
        version = "0.1.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2009 Toralf Wittner";
      maintainer = "toralf.wittner@gmail.com";
      author = "Toralf Wittner";
      homepage = "";
      url = "";
      synopsis = "Low-level bindings to epoll.";
      description = "Bindings to epoll, a Linux specific I/O\nevent notication facility (cf. man epoll(7)).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.mtl)
        ];
      };
    };
  }