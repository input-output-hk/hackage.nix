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
    flags = { perl5 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "Pugs"; version = "6.2.13.20111008"; };
      license = "BSD-3-Clause";
      copyright = "2005-2008, The Pugs Contributors";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang <audreyt@audreyt.org>";
      homepage = "http://pugscode.org/";
      url = "";
      synopsis = "A Perl 6 Implementation";
      description = "A Perl 6 Implementation";
      buildType = "Custom";
      };
    components = {
      exes = {
        "pugs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."FindBin" or (errorHandler.buildDepError "FindBin"))
            (hsPkgs."control-timeout" or (errorHandler.buildDepError "control-timeout"))
            (hsPkgs."MetaObject" or (errorHandler.buildDepError "MetaObject"))
            (hsPkgs."HsParrot" or (errorHandler.buildDepError "HsParrot"))
            (hsPkgs."pugs-compat" or (errorHandler.buildDepError "pugs-compat"))
            (hsPkgs."pugs-DrIFT" or (errorHandler.buildDepError "pugs-DrIFT"))
            (hsPkgs."stringtable-atom" or (errorHandler.buildDepError "stringtable-atom"))
            (hsPkgs."HsSyck" or (errorHandler.buildDepError "HsSyck"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            ];
          buildable = true;
          };
        };
      };
    }