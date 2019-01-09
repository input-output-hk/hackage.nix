{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "reified-records"; version = "0.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "danny.gratzer@gmail.com";
      author = "Danny Gratzer";
      homepage = "http://bitbucket.org/jozefg/reified-records";
      url = "";
      synopsis = "Reify records to Maps and back again";
      description = "This package provides a series of functions to do introspect records and allow records to be manipulated\ndynamically as @Map@s.\nCurrently this works using @Data.Data@ however in future this will likely change to @GHC.Generics@ and allow more user hooks\ninto how types are reified and reflected.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.mtl) ];
        };
      };
    }