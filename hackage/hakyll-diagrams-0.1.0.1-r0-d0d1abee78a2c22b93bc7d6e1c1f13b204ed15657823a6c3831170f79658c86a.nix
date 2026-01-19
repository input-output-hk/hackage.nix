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
      specVersion = "3.0";
      identifier = { name = "hakyll-diagrams"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fgarcia.renato@gmail.com";
      author = "Renato Garcia";
      homepage = "https://github.com/renatoGarcia/hakyll-diagrams";
      url = "";
      synopsis = "A Hakyll plugin for rendering diagrams figures from embedded Haskell code.";
      description = "Compiles any Haskell [diagrams](https://diagrams.github.io/) code embedded in\ninput source files (Markdown, reStructuredText, etc.), replacing them with the rendered\ndiagrams figures in the generated HTML output. The diagrams figures can be inlined as\nSVG code or referenced as external @.svg@ image files using @\\<img>@ tags.\n\nFor example, when processing a Markdown input source file, a code block like this:\n\n@\n``` diagram { svg:width=300 }\nlet\n  target = mconcat\n    [ circle 1 # lw 0 # fc red\n    , circle 2 # lw 0 # fc white\n    , circle 3 # lw 0 # fc red\n    ]\n\n  background = roundedRect 8 8 0.1\n    # lw 0\n    # fc (sRGB24read \"#808080\")\n    # opacity 0.15\n\nin target <> background\n```\n@\n\nwill be replaced in the resulting HTML page by this figure:\n\n<<docs/docs-data/target.svg>>\n\nA thoughtful documentation with usage examples and results can be found at the [project\nrepository](https://github.com/renatoGarcia/hakyll-diagrams).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."cryptohash-sha1" or (errorHandler.buildDepError "cryptohash-sha1"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."diagrams" or (errorHandler.buildDepError "diagrams"))
          (hsPkgs."diagrams-core" or (errorHandler.buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."svg-builder" or (errorHandler.buildDepError "svg-builder"))
        ];
        buildable = true;
      };
      tests = {
        "hakyll-diagrams-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hakyll-diagrams" or (errorHandler.buildDepError "hakyll-diagrams"))
          ];
          buildable = true;
        };
      };
    };
  }