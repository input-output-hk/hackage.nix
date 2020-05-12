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
      specVersion = "1.16";
      identifier = { name = "mono-foldable"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jwlato@gmail.com";
      author = "Artyom Kazak, John W. Lato";
      homepage = "http://github.com/JohnLato/mono-foldable";
      url = "";
      synopsis = "Folds for monomorphic containers";
      description = "Like Data.Foldable, but works with ByteStrings too";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }