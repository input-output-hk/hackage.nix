{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "semibounded-lattices"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Hao Xu";
      maintainer = "xuh@email.unc.edu";
      author = "Hao Xu";
      homepage = "https://github.com/xu-hao/semibounded-lattices#readme";
      url = "";
      synopsis = "A Haskell implementation of semibounded lattices";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.lattices) (hsPkgs.containers) ];
        };
      tests = {
        "semibounded-lattices-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.semibounded-lattices) ];
          };
        };
      };
    }