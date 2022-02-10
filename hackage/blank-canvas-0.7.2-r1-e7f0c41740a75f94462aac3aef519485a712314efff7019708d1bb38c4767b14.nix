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
      identifier = { name = "blank-canvas"; version = "0.7.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 The University of Kansas";
      maintainer = "andygill@ku.edu";
      author = "Andy Gill and Ryan Scott";
      homepage = "https://github.com/ku-fpg/blank-canvas/wiki";
      url = "";
      synopsis = "HTML5 Canvas Graphics Library";
      description = "@blank-canvas@ is a Haskell binding to the complete\n<https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API HTML5 Canvas API>.\n@blank-canvas@ allows Haskell users to write, in Haskell,\ninteractive images onto their web browsers. @blank-canvas@\ngives the user a single full-window canvas, and provides\nmany well-documented functions for rendering\nimages.\n\n@\n&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;\nmodule Main where\nimport Graphics.Blank                     -- import the blank canvas\n\nmain = blankCanvas 3000 $ \\\\ context -> do -- start blank canvas on port 3000\n&#32;&#32;send context $ do                       -- send commands to this specific context\n&#32;&#32;&#32;&#32;moveTo(50,50)\n&#32;&#32;&#32;&#32;lineTo(200,100)\n&#32;&#32;&#32;&#32;lineWidth 10\n&#32;&#32;&#32;&#32;strokeStyle \\\"red\\\"\n&#32;&#32;&#32;&#32;stroke()                              -- this draws the ink into the canvas\n@\n\n<<https://github.com/ku-fpg/blank-canvas/wiki/images/Red_Line.png>>\n\nFor more details, read the <https://github.com/ku-fpg/blank-canvas/wiki blank-canvas wiki>.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat-batteries" or (errorHandler.buildDepError "base-compat-batteries"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mime-types" or (errorHandler.buildDepError "mime-types"))
          (hsPkgs."kansas-comet" or (errorHandler.buildDepError "kansas-comet"))
          (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }