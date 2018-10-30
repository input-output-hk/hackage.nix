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
        name = "serf";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "SaneTracker";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "http://github.com/sanetracker/serf";
      url = "";
      synopsis = "Interact with Serf via Haskell.";
      description = "Bindings to most of the commands provided by serf.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.operational)
          (hsPkgs.mtl)
          (hsPkgs.conduit)
          (hsPkgs.attoparsec-conduit)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.resourcet)
        ];
      };
    };
  }