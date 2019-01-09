{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "wordexp"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matvey.aksenov@gmail.com";
      author = "Matvey Aksenov";
      homepage = "";
      url = "";
      synopsis = "wordexp(3) wrappers";
      description = "man wordexp";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.array) (hsPkgs.semigroups) ];
        build-tools = [ ((hsPkgs.buildPackages).c2hs) ];
        };
      };
    }