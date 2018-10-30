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
        name = "multipool";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Ian Duncan";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "https://github.com/iand675/multipool#readme";
      url = "";
      synopsis = "Generalized system for reading and writing to distributed systems that have primary/replica topologies.";
      description = "Please see the README on GitHub at <https://github.com/iand675/multipool#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.persistent)
          (hsPkgs.resource-pool)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "multipool-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hashable)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.multipool)
            (hsPkgs.persistent)
            (hsPkgs.resource-pool)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }