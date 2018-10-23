{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "varying";
        version = "0.1.0.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "schell.scivally@synapsegroup.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/varying";
      url = "";
      synopsis = "Automaton based varying values, event streams and tweening.";
      description = "Varying is another FRP or LSP library aimed at providing a\nsimple way to describe discrete or continuously varying\nvalues. It is capable of tweening out of the box and\nprovides a small, well documented API.";
      buildType = "Simple";
    };
    components = {
      "varying" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
        ];
      };
      exes = {
        "varying-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.time)
          ];
        };
      };
    };
  }