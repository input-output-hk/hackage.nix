{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "directory";
        version = "1.0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "library for directory handling";
      description = "This package provides a library for handling directories.";
      buildType = "Configure";
    };
    components = {
      "directory" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.old-time)
          (hsPkgs.filepath)
        ] ++ pkgs.lib.optionals (!(compiler.isNhc98 && true)) (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
      };
    };
  }