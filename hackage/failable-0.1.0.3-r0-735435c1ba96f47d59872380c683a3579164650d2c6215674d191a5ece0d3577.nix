{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "failable"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2019 Erick Gonzalez";
      maintainer = "erick@codemonkeylabs.de";
      author = "Erick Gonzalez";
      homepage = "";
      url = "";
      synopsis = "A 'Failable' error monad class to unify failure across monads that can fail";
      description = "Please see the README on Gitlab at <https://gitlab.com/codemonkeylabs/failable#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.transformers) ];
        };
      };
    }