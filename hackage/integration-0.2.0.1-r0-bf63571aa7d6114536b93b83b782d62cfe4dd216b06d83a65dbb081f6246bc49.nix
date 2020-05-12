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
      specVersion = "1.6";
      identifier = { name = "integration"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Edward Kmett <ekmett@gmail.com>";
      author = "Edward Kmett";
      homepage = "https://github.com/ekmett/integration";
      url = "";
      synopsis = "Fast robust numeric integration via tanh-sinh quadrature";
      description = "Fast robust numeric integration via tanh-sinh quadrature";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          ];
        buildable = true;
        };
      };
    }