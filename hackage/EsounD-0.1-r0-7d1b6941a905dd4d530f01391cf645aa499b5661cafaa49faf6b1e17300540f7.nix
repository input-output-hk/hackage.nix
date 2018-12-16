{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      build-examples = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "EsounD";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro dot org>";
      author = "PHO <pho at cielonegro dot org>";
      homepage = "http://cielonegro.org/EsounD.html";
      url = "";
      synopsis = "Type-safe bindings to EsounD (ESD; Enlightened Sound Daemon)";
      description = "Type-safe bindings to EsounD: <http://www.tux.org/~ricdude/EsounD.html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.bindings-EsounD)
          (hsPkgs.monad-peel)
          (hsPkgs.network)
          (hsPkgs.regions)
          (hsPkgs.safer-file-handles)
          (hsPkgs.storablevector)
          (hsPkgs.transformers)
          (hsPkgs.unix)
        ];
      };
      exes = {
        "hs-esd-player-example" = {};
      };
    };
  }