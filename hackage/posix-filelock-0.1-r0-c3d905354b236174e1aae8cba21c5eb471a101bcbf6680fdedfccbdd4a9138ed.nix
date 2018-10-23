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
        name = "posix-filelock";
        version = "0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2012 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/singpolyma/posix-filelock-haskell";
      url = "";
      synopsis = "Nice wrapper around POSIX fcntl advisory locks";
      description = "\"System.Posix.IO\" has very low-level bindings to POSIX fcntl\nadvisory locks.  This module wraps them in a cleaner API.";
      buildType = "Simple";
    };
    components = {
      "posix-filelock" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.transformers)
        ];
      };
    };
  }