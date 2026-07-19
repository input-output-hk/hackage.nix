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
      identifier = { name = "hgg-latex"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Aelysce Project (Toshiaki Honda)";
      maintainer = "frenzieddoll@gmail.com";
      author = "Toshiaki Honda";
      homepage = "https://github.com/frenzieddoll/hgg";
      url = "";
      synopsis = "LaTeX (TikZ) backend for hgg";
      description = "LaTeX (TikZ) backend for hgg. Interprets the [Primitive] list from\nhgg-core into plain TikZ commands, in the same single-pass architecture\nas the SVG / PDF backends. Adds zero runtime dependencies (pure text\ngeneration). Typesetting the generated .tex is left to the user's LaTeX\nenvironment (pdflatex, lualatex, ...) — this package does not depend on\nany LaTeX binary.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
          (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
        ];
        buildable = true;
      };
      tests = {
        "hgg-latex-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-latex" or (errorHandler.buildDepError "hgg-latex"))
          ];
          buildable = true;
        };
      };
    };
  }