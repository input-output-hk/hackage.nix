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
        name = "spiros";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Spiros Boosalis";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "http://github.com/sboosali/spiros#readme";
      url = "";
      synopsis = "my custom prelude";
      description = "my custom prelude. diverges from base's; adding, removing, and shadowing.";
      buildType = "Simple";
    };
    components = {
      "spiros" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.safe)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.stm)
          (hsPkgs.vinyl)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.unordered-containers)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.time)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.split)
          (hsPkgs.wl-pprint-text)
          (hsPkgs.data-default-class)
        ];
      };
    };
  }