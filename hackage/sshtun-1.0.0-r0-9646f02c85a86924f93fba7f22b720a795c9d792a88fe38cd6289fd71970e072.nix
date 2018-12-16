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
        name = "sshtun";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Dino Morelli";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli";
      homepage = "http://ui3.info/d/proj/sshtun.html";
      url = "";
      synopsis = "Wrapper daemon to manage an ssh tunnel";
      description = "This is a daemon that executes an ssh command to form a secure tunnel and then blocks on it. If the tunnel goes down, sshtun can attempt to reestablish it. It can also be set up to monitor a file on an http server to determine if the tunnel should be up or not, so you can switch it on or off remotely.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "sshtun" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.curl)
            (hsPkgs.directory)
            (hsPkgs.hdaemonize)
            (hsPkgs.hslogger)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.regex-compat)
            (hsPkgs.stm)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }