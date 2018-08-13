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
      specVersion = "1.8";
      identifier = {
        name = "msu";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "(c) 2013 Pat Brisbin";
      maintainer = "Pat Brisbin <pbrisbin@gmail.com>";
      author = "Pat Brisbin <pbrisbin@gmail.com>";
      homepage = "http://github.com/pbrisbin/msu";
      url = "";
      synopsis = "Monitor Setup Utility";
      description = "Convenient wrapper over xrandr for setting up monitors";
      buildType = "Simple";
    };
    components = {
      exes = {
        "msu" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.xdg-basedir)
          ];
        };
      };
    };
  }