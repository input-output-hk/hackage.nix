{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "incremental"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Fumiaki Kinoshita";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/incremental#readme";
      url = "";
      synopsis = "incremental update library";
      description = "Generic interface for incremental updates";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.semigroups)
          (hsPkgs.deepseq)
          ];
        };
      tests = {
        "incremental-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.incremental) ];
          };
        };
      };
    }