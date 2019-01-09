{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "multipool-persistent-postgresql";
        version = "0.1.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "Ian Duncan";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "https://github.com/iand675/multipool-persistent-postgresql#readme";
      url = "";
      synopsis = "Read and write appropriately from both master and replicated postgresql instances.";
      description = "Please see the README on GitHub at <https://github.com/iand675/multipool#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.multipool)
          (hsPkgs.multipool-persistent)
          (hsPkgs.persistent)
          (hsPkgs.persistent-postgresql)
          (hsPkgs.postgresql-common-persistent)
          (hsPkgs.unliftio-core)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "multipool-persistent-postgresql-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.multipool)
            (hsPkgs.multipool-persistent)
            (hsPkgs.multipool-persistent-postgresql)
            (hsPkgs.persistent)
            (hsPkgs.persistent-postgresql)
            (hsPkgs.postgresql-common-persistent)
            (hsPkgs.unliftio-core)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }