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
      specVersion = "1.6";
      identifier = {
        name = "xkcd";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "robert.selvek@gmail.com";
      author = "Róbert Selvek";
      homepage = "http://github.com/sellweek/xkcd";
      url = "";
      synopsis = "Downloads the most recent xkcd comic.";
      description = "Downloads the most recent xkcd comic into a folder on a disk.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "xkcd" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HTTP)
            (hsPkgs.tagsoup)
            (hsPkgs.bytestring)
            (hsPkgs.network)
            (hsPkgs.haskell98)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }