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
        name = "exif";
        version = "3000.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert";
      maintainer = "bjorn@bringert.net";
      author = "Bjorn Bringert";
      homepage = "";
      url = "";
      synopsis = "A Haskell binding to a subset of libexif";
      description = "This is a Haskell binding to a subset of libexif.\nOnly tag reading is currently supported.\nImage files containing EXIF data can be read from memory or\ndisk.";
      buildType = "Custom";
    };
    components = {
      "exif" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs.exif) (pkgs.m) ];
      };
    };
  }