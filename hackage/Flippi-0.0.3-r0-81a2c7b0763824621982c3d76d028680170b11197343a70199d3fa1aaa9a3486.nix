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
      specVersion = "0";
      identifier = {
        name = "Flippi";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Philippa Cowderoy <flippa@flippac.org>";
      author = "Philippa Cowderoy";
      homepage = "http://www.flippac.org/projects/flippi/";
      url = "";
      synopsis = "Wiki";
      description = "Flippi is a Wiki clone written in Haskell";
      buildType = "Simple";
    };
    components = {
      exes = {
        "flippi" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.xhtml)
            (hsPkgs.html)
            (hsPkgs.cgi)
            (hsPkgs.parsec)
            (hsPkgs.directory)
            (hsPkgs.old-time)
            (hsPkgs.FiniteMap)
          ];
        };
      };
    };
  }