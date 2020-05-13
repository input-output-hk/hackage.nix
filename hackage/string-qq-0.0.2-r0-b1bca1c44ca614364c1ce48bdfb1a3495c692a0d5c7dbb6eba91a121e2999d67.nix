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
      identifier = { name = "string-qq"; version = "0.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "Audrey Tang";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang";
      homepage = "";
      url = "";
      synopsis = "QuasiQuoter for non-interpolated strings, texts and bytestrings.";
      description = "QuasiQuoter for non-interpolated strings, texts and bytestrings.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }