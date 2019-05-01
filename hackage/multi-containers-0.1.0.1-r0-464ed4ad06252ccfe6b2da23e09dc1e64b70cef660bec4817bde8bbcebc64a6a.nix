{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "multi-containers"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Ziyang Liu";
      maintainer = "Ziyang Liu <free@cofree.io>";
      author = "Ziyang Liu <free@cofree.io>";
      homepage = "https://github.com/zliu41/multi-containers#readme";
      url = "";
      synopsis = "A few multimap variants.";
      description = "A library that provides a few multimap variants.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      exes = {
        "test-gen" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.extra)
            (hsPkgs.filepath)
            ];
          };
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.multi-containers)
            ];
          };
        };
      };
    }