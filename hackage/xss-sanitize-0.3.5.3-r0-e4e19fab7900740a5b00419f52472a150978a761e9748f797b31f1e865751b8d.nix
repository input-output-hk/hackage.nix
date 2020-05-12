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
    flags = { network-uri = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "xss-sanitize"; version = "0.3.5.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Greg Weber <greg@gregweber.info>";
      homepage = "http://github.com/yesodweb/haskell-xss-sanitize";
      url = "";
      synopsis = "sanitize untrusted HTML to prevent XSS attacks";
      description = "run untrusted HTML through Text.HTML.SanitizeXSS.sanitizeXSS to prevent XSS attacks. see README.md <http://github.com/yesodweb/haskell-xss-sanitize> for more details";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."css-text" or (errorHandler.buildDepError "css-text"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          ] ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]);
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."css-text" or (errorHandler.buildDepError "css-text"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ] ++ (if flags.network-uri
            then [
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        };
      };
    }