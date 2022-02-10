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
      specVersion = "1.22";
      identifier = { name = "escape-artist"; version = "1.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 Ryan Daniels";
      maintainer = "rd.github@gmail.com";
      author = "Ryan Daniels";
      homepage = "https://github.com/EarthCitizen/escape-artist#readme";
      url = "";
      synopsis = "ANSI Escape Sequence Text Decoration Made Easy";
      description = "A library for text decoration with ANSI escape sequences made easy. Decorate your terminal text expressively.\nAny complex data type, existing or custom, can be simply colorized by implementing the class 'ToEscapable', then\noutput to terminal or converted to 'String' using the provided functions.\n\nSimple Example\n\n@\nimport Data.Monoid ((\\<\\>))\nimport Text.EscapeArtist\n\nunderlines = Underline $ FgCyan \\\"I am underlined\\\" \\<\\> UnderlineOff \\\" but I am not \\\" \\<\\> FgMagenta \\\"and I am over here\\\"\n\nputEscLn underlines\n@\n\n<<https://raw.githubusercontent.com/EarthCitizen/escape-artist/master/images/underline_off.png>>\n\nImplementing 'ToEscapable'\n\n@\nimport Data.Monoid ((\\<\\>))\nimport Text.EscapeArtist\n\ndata ABC = A | B deriving (Show, Eq)\n\ninstance ToEscapable ABC where\n&#x20;   toEscapable (A) = FgRed $ show A\n&#x20;   toEscapable (B) = FgGreen $ show B\n\ninstance (ToEscapable a) => ToEscapable (Maybe a) where\n&#x20;    toEscapable (Just a) = FgGreen \\\"Just\\\" \\<\\> Inherit \\\" \\\" \\<\\> FgYellow a\n&#x20;    toEscapable a = FgRed $ show a\n@\n\nComprehensive Documentation\n\nSee comprehensive documentation with many examples here:\n\n<https://github.com/EarthCitizen/escape-artist#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10.0") (hsPkgs."unsupported-ghc-version" or (errorHandler.buildDepError "unsupported-ghc-version"));
        buildable = true;
        };
      tests = {
        "escape-artist-spec-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."escape-artist" or (errorHandler.buildDepError "escape-artist"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10.0") (hsPkgs."unsupported-ghc-version" or (errorHandler.buildDepError "unsupported-ghc-version"));
          buildable = true;
          };
        "escape-artist-visual-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."escape-artist" or (errorHandler.buildDepError "escape-artist"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10.0") (hsPkgs."unsupported-ghc-version" or (errorHandler.buildDepError "unsupported-ghc-version"));
          buildable = true;
          };
        };
      };
    }