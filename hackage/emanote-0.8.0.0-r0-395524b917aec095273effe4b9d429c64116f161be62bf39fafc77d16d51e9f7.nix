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
      specVersion = "2.4";
      identifier = { name = "emanote"; version = "0.8.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "2022 Sridhar Ratnakumar";
      maintainer = "srid@srid.ca";
      author = "Sridhar Ratnakumar";
      homepage = "";
      url = "";
      synopsis = "Emanate a structured view of your plain-text notes";
      description = "Create beautiful websites -- such as personal webpage, blog, wiki, Zettelkasten, notebook, knowledge-base, documentation, etc. from future-proof plain-text notes and arbitrary data -- with live preview that updates in real-time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-extra" or (errorHandler.buildDepError "aeson-extra"))
          (hsPkgs."aeson-optics" or (errorHandler.buildDepError "aeson-optics"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."commonmark" or (errorHandler.buildDepError "commonmark"))
          (hsPkgs."commonmark-extensions" or (errorHandler.buildDepError "commonmark-extensions"))
          (hsPkgs."commonmark-pandoc" or (errorHandler.buildDepError "commonmark-pandoc"))
          (hsPkgs."commonmark-simple" or (errorHandler.buildDepError "commonmark-simple"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."ema" or (errorHandler.buildDepError "ema"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."filepattern" or (errorHandler.buildDepError "filepattern"))
          (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."heist-emanote" or (errorHandler.buildDepError "heist-emanote"))
          (hsPkgs."heist-extra" or (errorHandler.buildDepError "heist-extra"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."hspec-hedgehog" or (errorHandler.buildDepError "hspec-hedgehog"))
          (hsPkgs."ixset-typed" or (errorHandler.buildDepError "ixset-typed"))
          (hsPkgs."lvar" or (errorHandler.buildDepError "lvar"))
          (hsPkgs."map-syntax" or (errorHandler.buildDepError "map-syntax"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."monad-logger-extras" or (errorHandler.buildDepError "monad-logger-extras"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          (hsPkgs."optics-th" or (errorHandler.buildDepError "optics-th"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."pandoc-link-context" or (errorHandler.buildDepError "pandoc-link-context"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."path-tree" or (errorHandler.buildDepError "path-tree"))
          (hsPkgs."process-extras" or (errorHandler.buildDepError "process-extras"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."shower" or (errorHandler.buildDepError "shower"))
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."tagtree" or (errorHandler.buildDepError "tagtree"))
          (hsPkgs."tailwind" or (errorHandler.buildDepError "tailwind"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."tomland" or (errorHandler.buildDepError "tomland"))
          (hsPkgs."unionmount" or (errorHandler.buildDepError "unionmount"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."uri-encode" or (errorHandler.buildDepError "uri-encode"))
          (hsPkgs."url-slug" or (errorHandler.buildDepError "url-slug"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."which" or (errorHandler.buildDepError "which"))
          (hsPkgs."with-utf8" or (errorHandler.buildDepError "with-utf8"))
          (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
        ];
        buildable = true;
      };
      exes = {
        "emanote" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-extra" or (errorHandler.buildDepError "aeson-extra"))
            (hsPkgs."aeson-optics" or (errorHandler.buildDepError "aeson-optics"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."commonmark" or (errorHandler.buildDepError "commonmark"))
            (hsPkgs."commonmark-extensions" or (errorHandler.buildDepError "commonmark-extensions"))
            (hsPkgs."commonmark-pandoc" or (errorHandler.buildDepError "commonmark-pandoc"))
            (hsPkgs."commonmark-simple" or (errorHandler.buildDepError "commonmark-simple"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ema" or (errorHandler.buildDepError "ema"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."filepattern" or (errorHandler.buildDepError "filepattern"))
            (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."heist-emanote" or (errorHandler.buildDepError "heist-emanote"))
            (hsPkgs."heist-extra" or (errorHandler.buildDepError "heist-extra"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-hedgehog" or (errorHandler.buildDepError "hspec-hedgehog"))
            (hsPkgs."ixset-typed" or (errorHandler.buildDepError "ixset-typed"))
            (hsPkgs."lvar" or (errorHandler.buildDepError "lvar"))
            (hsPkgs."map-syntax" or (errorHandler.buildDepError "map-syntax"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."monad-logger-extras" or (errorHandler.buildDepError "monad-logger-extras"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."optics-th" or (errorHandler.buildDepError "optics-th"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-link-context" or (errorHandler.buildDepError "pandoc-link-context"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."path-tree" or (errorHandler.buildDepError "path-tree"))
            (hsPkgs."process-extras" or (errorHandler.buildDepError "process-extras"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."shower" or (errorHandler.buildDepError "shower"))
            (hsPkgs."some" or (errorHandler.buildDepError "some"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."tagtree" or (errorHandler.buildDepError "tagtree"))
            (hsPkgs."tailwind" or (errorHandler.buildDepError "tailwind"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tomland" or (errorHandler.buildDepError "tomland"))
            (hsPkgs."unionmount" or (errorHandler.buildDepError "unionmount"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."uri-encode" or (errorHandler.buildDepError "uri-encode"))
            (hsPkgs."url-slug" or (errorHandler.buildDepError "url-slug"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."which" or (errorHandler.buildDepError "which"))
            (hsPkgs."with-utf8" or (errorHandler.buildDepError "with-utf8"))
            (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          buildable = true;
        };
      };
    };
  }