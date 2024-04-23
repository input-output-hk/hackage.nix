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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hugs2yc"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2008, Dmitry Golubovsky and The Yhc Team";
      maintainer = "golubovsky@gmail.com";
      author = "Dmitry Golubovsky";
      homepage = "http://www.haskell.org/haskellwiki/Yhc";
      url = "";
      synopsis = "Hugs Front-end to Yhc Core.";
      description = "A converter of Hugs Core output to Yhc Core format for further conversion by a back-end.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."yhccore" or (errorHandler.buildDepError "yhccore"))
          (hsPkgs."ycextra" or (errorHandler.buildDepError "ycextra"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ]);
        buildable = true;
      };
    };
  }