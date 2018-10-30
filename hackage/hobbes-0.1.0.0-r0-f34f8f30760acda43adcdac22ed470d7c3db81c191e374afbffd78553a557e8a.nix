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
        name = "hobbes";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jhickner@gmail.com";
      author = "Jason Hickner";
      homepage = "http://github.com/jhickner/hobbes";
      url = "";
      synopsis = "A small file watcher for OSX";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hobbes" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.filemanip)
            (hsPkgs.hfsevents)
          ];
        };
      };
    };
  }