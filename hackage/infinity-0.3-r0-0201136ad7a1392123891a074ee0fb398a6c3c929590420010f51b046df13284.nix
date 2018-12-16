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
      specVersion = "1.2";
      identifier = {
        name = "infinity";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "austin@youareinferior.net";
      author = "Austin Seipp";
      homepage = "";
      url = "";
      synopsis = "";
      description = "a tiny, pluggable irc bot";
      buildType = "Custom";
    };
    components = {
      exes = {
        "infinity" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.plugins)
            (hsPkgs.ghc)
            (hsPkgs.binary)
            (hsPkgs.filepath)
            (hsPkgs.irc)
            (hsPkgs.base)
          ];
        };
      };
    };
  }