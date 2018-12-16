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
        name = "snaplet-purescript";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "alfredo.dinapoli@gmail.com";
      author = "Alfredo Di Napoli";
      homepage = "";
      url = "";
      synopsis = "Automatic (re)compilation of purescript projects";
      description = "Automatic (re)compilation of purescript projects";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.snap-core)
          (hsPkgs.snap)
          (hsPkgs.raw-strings-qq)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.configurator)
          (hsPkgs.shelly)
        ];
      };
    };
  }