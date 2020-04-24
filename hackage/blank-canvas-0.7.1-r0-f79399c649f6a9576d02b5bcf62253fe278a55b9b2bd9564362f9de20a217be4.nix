{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "blank-canvas"; version = "0.7.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 The University of Kansas";
      maintainer = "andygill@ku.edu";
      author = "Andy Gill and Ryan Scott";
      homepage = "https://github.com/ku-fpg/blank-canvas/wiki";
      url = "";
      synopsis = "HTML5 Canvas Graphics Library";
      description = "@blank-canvas@ is a Haskell binding to the complete\n<https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API HTML5 Canvas API>.\n@blank-canvas@ allows Haskell users to write, in Haskell,\ninteractive images onto their web browsers. @blank-canvas@\ngives the user a single full-window canvas, and provides\nmany well-documented functions for rendering\nimages.\n\n@\n&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;\nmodule Main where\nimport Graphics.Blank                     -- import the blank canvas\n\nmain = blankCanvas 3000 \$ \\\\ context -> do -- start blank canvas on port 3000\n&#32;&#32;send context \$ do                       -- send commands to this specific context\n&#32;&#32;&#32;&#32;moveTo(50,50)\n&#32;&#32;&#32;&#32;lineTo(200,100)\n&#32;&#32;&#32;&#32;lineWidth 10\n&#32;&#32;&#32;&#32;strokeStyle \\\"red\\\"\n&#32;&#32;&#32;&#32;stroke()                              -- this draws the ink into the canvas\n@\n\n<<https://github.com/ku-fpg/blank-canvas/wiki/images/Red_Line.png>>\n\nFor more details, read the <https://github.com/ku-fpg/blank-canvas/wiki blank-canvas wiki>.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat-batteries" or ((hsPkgs.pkgs-errors).buildDepError "base-compat-batteries"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."fail" or ((hsPkgs.pkgs-errors).buildDepError "fail"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."mime-types" or ((hsPkgs.pkgs-errors).buildDepError "mime-types"))
          (hsPkgs."kansas-comet" or ((hsPkgs.pkgs-errors).buildDepError "kansas-comet"))
          (hsPkgs."scotty" or ((hsPkgs.pkgs-errors).buildDepError "scotty"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-show" or ((hsPkgs.pkgs-errors).buildDepError "text-show"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }