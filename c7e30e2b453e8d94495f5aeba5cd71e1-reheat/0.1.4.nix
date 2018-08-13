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
        name = "reheat";
        version = "0.1.4";
      };
      license = "LicenseRef-GPL";
      copyright = "GPL";
      maintainer = "Ingolf Wagner <palipalo9@gmail.com>";
      author = "Ingolf Wagner";
      homepage = "https://github.com/mrVanDalo/reheat";
      url = "";
      synopsis = "to make notes and reduce impact on idle time on writing other programms.";
      description = "a programm to make notes and reduce impact on idle time on writing other programms.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "reheat" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.vty)
            (hsPkgs.vty-ui)
          ];
        };
      };
      tests = {
        "test-reheat" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.vty)
            (hsPkgs.vty-ui)
          ];
        };
      };
    };
  }