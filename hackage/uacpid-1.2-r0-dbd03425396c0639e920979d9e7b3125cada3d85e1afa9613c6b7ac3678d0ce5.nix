{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "uacpid";
        version = "1.2";
      };
      license = "BSD-3-Clause";
      copyright = "2009-2015 Dino Morelli";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli";
      homepage = "http://hub.darcs.net/dino/uacpid";
      url = "";
      synopsis = "Userspace Advanced Configuration and Power Interface\nevent daemon";
      description = "uacpid is a daemon designed to be run in userspace\nthat will monitor the local system's acpid socket\nfor hardware events. These events can then be acted\nupon by handlers with access to the user's\nenvironment.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "uacpid" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hslogger)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.process)
            (hsPkgs.regex-compat)
            (hsPkgs.time)
            (hsPkgs.time-locale-compat)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }