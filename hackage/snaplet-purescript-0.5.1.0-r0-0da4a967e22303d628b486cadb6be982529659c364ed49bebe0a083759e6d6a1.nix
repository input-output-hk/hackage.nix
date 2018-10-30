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
        version = "0.5.1.0";
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.snap-core)
          (hsPkgs.snap)
          (hsPkgs.raw-strings-qq)
          (hsPkgs.string-conv)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.configurator)
          (hsPkgs.shelly)
        ];
      };
    };
  }