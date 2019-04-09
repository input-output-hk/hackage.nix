{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "comprehensions-ghc"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 M Farkas-Dyck";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Plugin to generalize comprehensions";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.ghc)
          (hsPkgs.syb)
          (hsPkgs.util)
          ];
        };
      tests = {
        "test" = { depends = [ (hsPkgs.base) (hsPkgs.comprehensions-ghc) ]; };
        };
      };
    }