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
      identifier = { name = "css-class-bindings"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Daniil Iaitkov 2026";
      maintainer = "dyaitskov@gmail.com";
      author = "Daniil Iaitskov";
      homepage = "http://github.com/yaitskov/css-class-bindings";
      url = "";
      synopsis = "generates Haskell bindings for CSS classes";
      description = "== Motivation\n#motivation#\n\nRecently I migrated the\n<https://github.com/yaitskov/vpn-router vpn-router> frontend to\n<https://github.com/dmjio/miso Miso>, I noticed that DOM functions\n(e.g. @div_@) accept CSS class names as plain strings. This prevents GHC\nfrom catching typos in referenced names, even if stylesheets are correct\nand defined with <https://hackage.haskell.org/package/clay clay>.\n\n== Usage\n#usage#\n\nThe library leverages the power of TH to parse CSS snippets from quasi\nquotes or style files and to define Haskell constants for every class\nmentioned in the input.\n\n=== Quasi-quote input\n#quasi-quote-input#\n\n> {-# LANGUAGE QuasiQuotes #-}\n> module Css where\n> import CssClassBindings ( css )\n>\n> [css|\n> .foo-bar {\n>   color: #fc2c2c;\n> }\n> |]\n\n> module Main where\n>\n> import Css (fooBar, cssAsLiteralText)\n> import CssClassBindings qualified as C\n> import Miso\n> import Miso.Html.Element (div_, button_)\n> import Miso.Html.Property qualified as P\n>\n> class_ :: C.CssClass MisoString -> Attribute action\n> class_ = P.class_ . C.class_\n>\n> app :: App Model Action\n> app = (component emptyModel updateModel viewModel)\n>   { styles = [ Style cssAsLiteralText ]\n>   }\n>\n> viewModel :: Model -> View Model Action\n> viewModel m = div_ [] [ button_ [ class_ fooBar ] [ \"Submit\" ] ]\n\nThe library has been created to improve a miso-based app, but it does\nnot depend on miso and it can be used in other setups.\n\n> fooBar :: IsString s => CssClass s\n> cssAsLiteralText :: IsString s => s\n\n=== File input\n#file-input#\n\n> {-# LANGUAGE TemplateHaskell #-}\n> module Css where\n> import CssClassBindings ( includeCss )\n>\n> includeCss \"assets/style.css\"\n\n> module Main where\n>\n> import Css (fooBar, style)\n> -- ...\n\n== Development environment\n#development-environment#\n\nHLS should be available inside the default dev shell.\n\n> $ nix develop\n> $ emacs src/*/*/Qq.hs &\n> $ cabal build";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."css-syntax" or (errorHandler.buildDepError "css-syntax"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."css-class-bindings" or (errorHandler.buildDepError "css-class-bindings"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }