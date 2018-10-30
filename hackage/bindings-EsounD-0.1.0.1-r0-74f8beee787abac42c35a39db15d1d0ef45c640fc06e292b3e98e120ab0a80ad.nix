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
      specVersion = "1.6";
      identifier = {
        name = "bindings-EsounD";
        version = "0.1.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro dot org>";
      author = "PHO <pho at cielonegro dot org>";
      homepage = "http://cielonegro.org/Bindings-EsounD.html";
      url = "";
      synopsis = "Low level bindings to EsounD (ESD; Enlightened Sound Daemon)";
      description = "Bindings to EsounD: <http://www.tux.org/~ricdude/EsounD.html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
          (hsPkgs.bindings-audiofile)
        ];
        pkgconfig = [
          (pkgconfPkgs.esound)
        ];
      };
    };
  }