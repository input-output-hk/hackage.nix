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
      identifier = { name = "program"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Michael Szvetits";
      maintainer = "typedbyte@qualified.name";
      author = "Michael Szvetits";
      homepage = "https://github.com/typedbyte/program#readme";
      url = "";
      synopsis = "Programs with Environments and Managed Resources";
      description = "Please see the README on GitHub at <https://github.com/typedbyte/program>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }