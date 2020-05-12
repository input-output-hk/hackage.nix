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
    flags = { haste-inst = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "haste-perch"; version = "0.1.0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto G. Corona ";
      homepage = "https://github.com/agocorona/haste-perch";
      url = "";
      synopsis = "Create dynamic HTML in the browser using declarative notation ";
      description = "see the description at the homepage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.haste-inst
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."haste-lib" or (errorHandler.buildDepError "haste-lib"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."haste-compiler" or (errorHandler.buildDepError "haste-compiler"))
            ];
        buildable = true;
        };
      };
    }