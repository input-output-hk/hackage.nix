{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "servant-gdp"; version = "0.0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2021 Mikael Tönnberg";
      maintainer = "mikael@carboncloud.com";
      author = "Mikael Tönnberg";
      homepage = "https://github.com/mtonnberg/servant-gdp#readme";
      url = "";
      synopsis = "Use Servant and GDP together to create expressive web API types";
      description = "Servant (A web api framework) and GDP (Ghosts of Departed Proofs) is here combined to allow for quite expressive API declarations. This is achieved by parsing captured API-input as named variables, making the named contexts span the entire request. This in turn, makes it possible to express a lot of domain knowledge or requirements in the Servant API type. For an example of how this can look like check out <https://github.com/mtonnberg/gdp-demo>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gdp" or (errorHandler.buildDepError "gdp"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }