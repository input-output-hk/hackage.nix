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
      specVersion = "1.8";
      identifier = { name = "conduit-resumablesink"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrew@amxl.com";
      author = "Andrew Miller";
      homepage = "http://github.com/A1kmm/conduit-resumablesink";
      url = "";
      synopsis = "Allows conduit to resume sinks to feed multiple sources into it.";
      description = "@conduit-resumablesink@ is a solution to the problem where you have a @conduit@\nsink and you want to feed multiple sources into it as each source is exhausted.\nThis is essentially the opposite of the ResumableSource functionality supplied\nwith conduit.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-resumablesink" or (errorHandler.buildDepError "conduit-resumablesink"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."void" or (errorHandler.buildDepError "void"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }