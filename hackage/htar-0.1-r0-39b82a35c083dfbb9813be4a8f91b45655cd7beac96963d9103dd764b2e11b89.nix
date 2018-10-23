{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "htar";
        version = "0.1";
      };
      license = "BSD-4-Clause";
      copyright = "2007 Bjorn Bringert <bjorn@bringert.net>";
      maintainer = "Bjorn Bringert <bjorn@bringert.net>";
      author = "Bjorn Bringert <bjorn@bringert.net>";
      homepage = "";
      url = "";
      synopsis = "Command-line TAR utility.";
      description = "Command-line TAR utility which uses the tar package.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "htar" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tar)
            (hsPkgs.compression)
          ];
        };
      };
    };
  }