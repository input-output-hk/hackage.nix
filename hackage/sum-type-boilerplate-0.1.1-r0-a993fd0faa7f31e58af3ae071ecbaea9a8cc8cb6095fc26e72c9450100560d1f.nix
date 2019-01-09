{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sum-type-boilerplate"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "David Reaver";
      author = "David Reaver";
      homepage = "https://github.com/jdreaver/sum-type-boilerplate#readme";
      url = "";
      synopsis = "Library for reducing the boilerplate involved with sum types";
      description = "Library for reducing the boilerplate involved in creating and manipulating sum types";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.template-haskell) ]; };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.hspec)
            (hsPkgs.sum-type-boilerplate)
            ];
          };
        };
      };
    }