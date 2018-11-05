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
        name = "ast-monad";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Masato Mouri";
      maintainer = "8128jp@gmail.com";
      author = "Masato Mouri";
      homepage = "https://github.com/mouri111/ast-monad#readme";
      url = "";
      synopsis = "A library for constructing AST by using do-notation";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "ast-monad-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ast-monad)
          ];
        };
      };
    };
  }