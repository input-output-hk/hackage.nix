{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "music-util"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund <hans@hanshoglund.se>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Utility for developing the Music Suite.";
      description = "Utility program for installing and developing the music suite.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "music-util" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.shelly)
            (hsPkgs.process)
            (hsPkgs.graphviz)
            (hsPkgs.fgl)
            (hsPkgs.Cabal)
            ];
          };
        };
      };
    }