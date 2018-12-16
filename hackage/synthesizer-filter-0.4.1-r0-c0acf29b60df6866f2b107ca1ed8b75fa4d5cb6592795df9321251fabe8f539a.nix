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
        name = "synthesizer-filter";
        version = "0.4.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "";
      synopsis = "Audio signal processing coded in Haskell: Filter networks";
      description = "In this package we experiment with various ways\nof representing filter networks.\nHowever, none of them is mature so far.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.synthesizer-core)
          (hsPkgs.transformers)
          (hsPkgs.numeric-prelude)
          (hsPkgs.numeric-quest)
          (hsPkgs.utility-ht)
          (hsPkgs.containers)
          (hsPkgs.base)
        ];
      };
    };
  }