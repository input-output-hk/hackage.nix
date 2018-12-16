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
        name = "mountpoints";
        version = "1.0.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "2012 Joey Hess";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Joey Hess";
      homepage = "";
      url = "";
      synopsis = "list mount points";
      description = "Lists currently mounted filesystems.\n\nWorks on: Linux, BSD, Mac OS X, Android";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base)
        ];
      };
    };
  }