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
      identifier = { name = "cli"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>, Nicolas Di Prima <nicolas@di-prima.fr>";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>, Nicolas Di Prima <nicolas@di-prima.fr>";
      homepage = "https://github.com/vincenthz/hs-cli#readme";
      url = "";
      synopsis = "CLI";
      description = "please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."basement" or (errorHandler.buildDepError "basement"))
          (hsPkgs."foundation" or (errorHandler.buildDepError "foundation"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."basement" or (errorHandler.buildDepError "basement"))
            (hsPkgs."cli" or (errorHandler.buildDepError "cli"))
            (hsPkgs."foundation" or (errorHandler.buildDepError "foundation"))
            ];
          buildable = true;
          };
        };
      };
    }