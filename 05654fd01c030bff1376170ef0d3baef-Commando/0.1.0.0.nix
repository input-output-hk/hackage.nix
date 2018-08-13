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
        name = "Commando";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "lyndon@sordina.net";
      author = "Lyndon Maydwell";
      homepage = "https://github.com/sordina/Commando";
      url = "";
      synopsis = "Watch some files; Rerun a command";
      description = "Watch some files; Rerun a command";
      buildType = "Simple";
    };
    components = {
      exes = {
        "commando" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.system-fileio)
            (hsPkgs.fsnotify)
            (hsPkgs.process)
          ];
        };
      };
    };
  }