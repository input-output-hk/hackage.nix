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
      specVersion = "1.8";
      identifier = {
        name = "socket-activation";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ddf1991@gmail.com";
      author = "David Fisher";
      homepage = "https://github.com/sakana/haskell-socket-activation";
      url = "";
      synopsis = "systemd socket activation library";
      description = "a module for systemd socket activation.  See\n<http://0pointer.de/blog/projects/socket-activation.html> and\n<http://www.freedesktop.org/software/systemd/man/systemd.socket.html> for more\ndetails.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.unix)
          (hsPkgs.transformers)
        ];
      };
    };
  }