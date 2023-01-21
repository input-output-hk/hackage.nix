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
    flags = { build-examples = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "byline"; version = "1.1.2"; };
      license = "BSD-2-Clause";
      copyright = "Copyright: (c) 2015-2023 Peter J. Jones";
      maintainer = "Peter Jones <pjones@devalot.com>";
      author = "Peter Jones <pjones@devalot.com>";
      homepage = "https://github.com/pjones/byline";
      url = "";
      synopsis = "Library for creating command-line interfaces (colors, menus, etc.)";
      description = "Byline simplifies writing interactive command-line applications by\nbuilding upon @ansi-terminal@ and @haskeline@.  This makes it\npossible to print messages and prompts that include terminal escape\nsequences (such as setting text colors) that are automatically\ndisabled when standard input is a file.  It also means that Byline\nworks on both POSIX-compatible systems and on Windows.\n\nThe primary features of Byline include printing messages, prompting\nfor input, and generating custom menus.  It was inspired by the\n@highline@ Ruby library and the @terminal@ library by Craig Roche.\n\n== Example\n\n> example :: MonadByline m => m Text\n> example = do\n>   sayLn (\"Hey, I like \" <> (\"Haskell\" <> fg magenta) <> \"!\")\n>\n>   let question =\n>         \"What's \"\n>           <> (\"your\" <> bold)\n>           <> \" favorite \"\n>           <> (\"language\" <> fg green <> underline)\n>           <> \"? \"\n>\n>   askLn question (Just \"Haskell\")\n\n<<https://github.com/pjones/byline/raw/trunk/doc/demo.png>>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."terminfo-hs" or (errorHandler.buildDepError "terminfo-hs"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "demo" = {
          depends = [
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."terminfo-hs" or (errorHandler.buildDepError "terminfo-hs"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."byline" or (errorHandler.buildDepError "byline"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        "simple" = {
          depends = [
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."terminfo-hs" or (errorHandler.buildDepError "terminfo-hs"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."byline" or (errorHandler.buildDepError "byline"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        "menu" = {
          depends = [
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."terminfo-hs" or (errorHandler.buildDepError "terminfo-hs"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."byline" or (errorHandler.buildDepError "byline"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        "shell" = {
          depends = [
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."terminfo-hs" or (errorHandler.buildDepError "terminfo-hs"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."byline" or (errorHandler.buildDepError "byline"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        "colors" = {
          depends = [
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."terminfo-hs" or (errorHandler.buildDepError "terminfo-hs"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."byline" or (errorHandler.buildDepError "byline"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."terminfo-hs" or (errorHandler.buildDepError "terminfo-hs"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."byline" or (errorHandler.buildDepError "byline"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }