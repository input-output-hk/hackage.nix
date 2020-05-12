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
      identifier = { name = "snaplet-mongoDB"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ciemniewski.kamil@gmail.com";
      author = "Kamil Ciemniewski";
      homepage = "";
      url = "";
      synopsis = "Snap Framework MongoDB support as Snaplet";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
          (hsPkgs."compact-string-fix" or (errorHandler.buildDepError "compact-string-fix"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mongoDB" or (errorHandler.buildDepError "mongoDB"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."regular" or (errorHandler.buildDepError "regular"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          ];
        buildable = true;
        };
      };
    }