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
      specVersion = "1.10";
      identifier = { name = "simple"; version = "0.2.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "amit@amitlevy.com";
      author = "Amit Levy";
      homepage = "";
      url = "";
      synopsis = "A minimalist web framework for the WAI server interface";
      description = "\\Simple\\ is \\\"framework-less\\\" web framework for Haskell web applications\nusing the WAI server interface (e.g. for use with the warp server). Unlike\nother frameoworks, \\Simple\\ does not enforce a particular structure or\nparadigm for web applications. Rather, \\Simple\\ makes it easier for you, the\ndeveloper, to use whichever paradigm or structure you like. This package\nincludes:\n\n* Web application building blocks under Web.Simple\n\n* A Sintra (http://www.sinatrarb.com) inspired DSL - Web.Frank\n\n* A Monad for building RESTful controllers - Web.REST\n\nTo get started using the warp web server:\n\n@\n$ cabal install simple warp\n@\n\n\\helloworld.hs\\:\n\n> import Web.Simple\n> import Network.Wai.Handler.Warp\n>\n> main :: IO ()\n> main = runSettings defaultSettings $ mkRouter $\n>         okHtml \"Hello World\"\n\n@$ runghc -XOverloadedStrings helloworld.hs@\n\nSee /Web.Simple/ for a more detailed introduction.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }