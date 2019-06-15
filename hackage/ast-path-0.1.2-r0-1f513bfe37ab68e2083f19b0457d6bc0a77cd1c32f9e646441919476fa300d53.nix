{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "ast-path"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2019 Keito Kajitani";
      maintainer = "ijaketak@gmail.com";
      author = "Keito Kajitani";
      homepage = "https://github.com/ijaketak/ast-path#readme";
      url = "";
      synopsis = "vocabulary representation for predicting program properties";
      description = "Please see the README on GitHub at <https://github.com/ijaketak/ast-path#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "ast-path-test" = {
          depends = [
            (hsPkgs.ast-path)
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      };
    }