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
      identifier = { name = "scotty"; version = "0.7.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2013 Andrew Farmer";
      maintainer = "Andrew Farmer <afarmer@ittc.ku.edu>";
      author = "Andrew Farmer <afarmer@ittc.ku.edu>";
      homepage = "https://github.com/scotty-web/scotty";
      url = "";
      synopsis = "Haskell web framework inspired by Ruby's Sinatra, using WAI and Warp";
      description = "A Haskell web framework inspired by Ruby's Sinatra, using WAI and Warp.\n\n@\n&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;\n\nimport Web.Scotty\n\nimport Data.Monoid (mconcat)\n\nmain = scotty 3000 $ do\n&#32;&#32;get &#34;/:word&#34; $ do\n&#32;&#32;&#32;&#32;beam <- param &#34;word&#34;\n&#32;&#32;&#32;&#32;html $ mconcat [&#34;&#60;h1&#62;Scotty, &#34;, beam, &#34; me up!&#60;/h1&#62;&#34;]\n@\n\n\nScotty is the cheap and cheerful way to write RESTful, declarative web applications.\n\n* A page is as simple as defining the verb, url pattern, and Text content.\n\n* It is template-language agnostic. Anything that returns a Text value will do.\n\n* Conforms to WAI Application interface.\n\n* Uses very fast Warp webserver by default.\n\nAs for the name: Sinatra + Warp = Scotty.\n\n[WAI] <http://hackage.haskell.org/package/wai>\n\n[Warp] <http://hackage.haskell.org/package/warp>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
        ];
        buildable = true;
      };
    };
  }