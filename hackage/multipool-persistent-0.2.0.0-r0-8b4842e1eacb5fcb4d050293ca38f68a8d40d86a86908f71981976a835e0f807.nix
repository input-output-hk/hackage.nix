{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "multipool-persistent"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Ian Duncan";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "https://github.com/iand675/multipool-persistent#readme";
      url = "";
      synopsis = "Read and write from appropriate persistent sql instances in replicated environments.";
      description = "Please see the README on GitHub at <https://github.com/iand675/multipool#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.multipool)
          (hsPkgs.persistent)
          (hsPkgs.resource-pool)
          (hsPkgs.unliftio-core)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "multipool-persistent-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.multipool)
            (hsPkgs.multipool-persistent)
            (hsPkgs.persistent)
            (hsPkgs.resource-pool)
            (hsPkgs.unliftio-core)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }