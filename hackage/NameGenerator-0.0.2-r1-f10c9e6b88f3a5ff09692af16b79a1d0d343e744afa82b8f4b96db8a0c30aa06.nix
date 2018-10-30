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
      specVersion = "1.10";
      identifier = {
        name = "NameGenerator";
        version = "0.0.2";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "pommicket@gmail.com";
      author = "pommicket";
      homepage = "http://github.com/pommicket/name-generator-haskell";
      url = "";
      synopsis = "A name generator written in Haskell";
      description = "Creates names using the frequencies of trigrams using Claude Shannon's method. You can find trigrams.txt on the GitHub page.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.containers)
        ];
      };
    };
  }