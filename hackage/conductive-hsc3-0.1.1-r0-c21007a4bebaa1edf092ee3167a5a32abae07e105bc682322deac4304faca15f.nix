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
      specVersion = "1.4";
      identifier = {
        name = "conductive-hsc3";
        version = "0.1.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "renick@gmail.com";
      author = "Renick Bell";
      homepage = "http://www.renickbell.net/doku.php?id=conductive-hsc3";
      url = "";
      synopsis = "a library with examples of using Conductive with hsc3";
      description = "This library contains examples of using Conductive with hsc3. Sythndefs and convenience functions exist for a sampler and an FM synth.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.conductive-base)
          (hsPkgs.conductive-song)
          (hsPkgs.containers)
          (hsPkgs.hosc)
          (hsPkgs.hsc3)
          (hsPkgs.MissingH)
          (hsPkgs.random)
        ];
      };
    };
  }