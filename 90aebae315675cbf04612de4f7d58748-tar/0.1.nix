{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "tar";
        version = "0.1";
      };
      license = "BSD-4-Clause";
      copyright = "2007 Bjorn Bringert <bjorn@bringert.net>";
      maintainer = "Bjorn Bringert <bjorn@bringert.net>";
      author = "Bjorn Bringert <bjorn@bringert.net>";
      homepage = "";
      url = "";
      synopsis = "TAR (tape archive format) library.";
      description = "This is a library for reading and writing TAR archives.";
      buildType = "Custom";
    };
    components = {
      "tar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.unix-compat)
        ];
      };
    };
  }