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
      identifier = { name = "activehs"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divipp@gmail.com";
      author = "Péter Diviánszky";
      homepage = "";
      url = "";
      synopsis = "Haskell code presentation tool";
      description = "ActiveHs is a Haskell source code presentation tool, developed for\neducation purposes.\n\nUser's Guide: <http://pnyf.inf.elte.hu:8000/UsersGuide_en.xml>\n\nDeveloper's Documentation (partial): <http://pnyf.inf.elte.hu:8000/DevDoc_en.xml>\n\nThe software is in prototype phase, although it already served more\nthan 700 000 user requests at Eötvös Loránd University Budapest, Hungary.\n\nNote that this software has many rough edges; you are welcome to\nwork on it!";
      buildType = "Simple";
    };
    components = {
      exes = {
        "activehs" = {
          depends = [
            (hsPkgs."hoogle" or (errorHandler.buildDepError "hoogle"))
            (hsPkgs."dia-base" or (errorHandler.buildDepError "dia-base"))
            (hsPkgs."dia-functions" or (errorHandler.buildDepError "dia-functions"))
            (hsPkgs."activehs-base" or (errorHandler.buildDepError "activehs-base"))
            (hsPkgs."data-pprint" or (errorHandler.buildDepError "data-pprint"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
            (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."simple-reflect" or (errorHandler.buildDepError "simple-reflect"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          ];
          buildable = true;
        };
      };
    };
  }