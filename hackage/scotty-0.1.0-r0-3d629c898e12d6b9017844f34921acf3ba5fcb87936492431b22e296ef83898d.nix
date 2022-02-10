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
      identifier = { name = "scotty"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Andrew Farmer";
      maintainer = "Andrew Farmer <anfarmer@ku.edu>";
      author = "Andrew Farmer <anfarmer@ku.edu>";
      homepage = "https://github.com/xich/scotty";
      url = "";
      synopsis = "Haskell web framework inspired by Ruby's Sinatra, using WAI and Warp";
      description = "A Haskell web framework inspired by Ruby's Sinatra, using WAI and Warp.\n\n@\n&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;\n\nimport Web.Scotty\n\nimport Data.Monoid (mconcat)\n\nmain = scotty 3000 $ do\n&#32;&#32;get &#34;/:word&#34; $ do\n&#32;&#32;&#32;&#32;beam <- param &#34;word&#34;\n&#32;&#32;&#32;&#32;html $ mconcat [&#34;&#60;h1&#62;Scotty, &#34;, beam, &#34; me up!&#60;/h1&#62;&#34;]\n@\n\n\nScotty is the cheap and cheerful way to write RESTful, declarative web applications.\n\n* A page is as simple as defining the verb, url pattern, and Text content.\n\n* It is template-language agnostic. Anything that returns a Text value will do.\n\n* Conforms to WAI Application interface.\n\n* Uses very fast Warp webserver by default.\n\nThis design has been done in Haskell at least once before (to my knowledge) by\nthe miku framework. My issue with miku is that it uses the Hack2 interface\ninstead of WAI (they are analogous, but the latter seems to have more traction),\nand that it is written using a custom prelude called Air (which appears to be an\nattempt to turn Haskell into Ruby syntactically). I wanted something that\ndepends on relatively few other packages, with an API that fits on one page.\n\nAs for the name: Sinatra + Warp = Scotty.\n\n[WAI] <http://hackage.haskell.org/package/wai>\n\n[Warp] <http://hackage.haskell.org/package/warp>";
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
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
        buildable = true;
        };
      };
    }