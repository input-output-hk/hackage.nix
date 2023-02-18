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
      identifier = { name = "lucid2-xstatic"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tdecacqu@redhat.com";
      author = "Tristan Cacqueray";
      homepage = "https://github.com/TristanCacqueray/haskell-xstatic#readme";
      url = "";
      synopsis = "Lucid2 helper for XStatic";
      description = "Use this library to add XStaticFile to your Html.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lucid2" or (errorHandler.buildDepError "lucid2"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."xstatic" or (errorHandler.buildDepError "xstatic"))
          ];
        buildable = true;
        };
      };
    }