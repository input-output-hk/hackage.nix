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
        name = "serf";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "Ian Duncan";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "http://github.com/sanetracker/serf";
      url = "";
      synopsis = "Interact with Serf via Haskell.";
      description = "Bindings to most of the commands provided by serf.";
      buildType = "Simple";
    };
    components = {
      "serf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.operational)
          (hsPkgs.mtl)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.resourcet)
        ];
      };
    };
  }