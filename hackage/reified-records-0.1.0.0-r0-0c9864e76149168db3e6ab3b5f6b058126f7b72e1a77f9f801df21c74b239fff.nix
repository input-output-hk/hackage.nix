{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "reified-records"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "danny.gratzer@gmail.com";
      author = "Danny Gratzer";
      homepage = "";
      url = "";
      synopsis = "Reify records to Maps and back again";
      description = "This package provides a pair of functions @reify@ and @reflect@ to allow records to be manipulated dynamically as @Map@s.\nCurrently this works using @Data.Data@ however in future this will likely change to @GHC.Generics@ and allow more user hooks\ninto how types are reified and reflected.\nThis package is meant to be a useful tool in writing serialization libraries for JSON and similar.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }