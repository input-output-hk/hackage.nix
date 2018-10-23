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
        name = "Spintax";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 - Michel Boucey";
      maintainer = "michel.boucey@cybervisible.fr";
      author = "Michel Boucey";
      homepage = "https://github.com/MichelBoucey/spintax";
      url = "";
      synopsis = "Random text generation based on spintax";
      description = "Random text generation based on spintax with nested alternatives and empty options.";
      buildType = "Simple";
    };
    components = {
      "Spintax" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.extra)
          (hsPkgs.mtl)
          (hsPkgs.mwc-random)
          (hsPkgs.text)
        ];
      };
    };
  }