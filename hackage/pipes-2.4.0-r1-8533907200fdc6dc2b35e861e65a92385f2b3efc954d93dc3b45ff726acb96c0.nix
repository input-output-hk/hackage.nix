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
      identifier = { name = "pipes"; version = "2.4.0"; };
      license = "BSD-3-Clause";
      copyright = "2012 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Compositional pipelines";
      description = "\\\"Iteratees done right\\\".  This library implements\niteratees\\/enumerators\\/enumeratees simply and elegantly, using different\nnaming conventions.\n\nAdvantages over traditional iteratee implementations:\n\n* /Concise API/: This library uses a few simple abstractions with a very high\npower-to-weight ratio to reduce adoption time.\n\n* /Clear semantics/: All abstractions are grounded in category theory, which\nleads to intuitive behavior (and fewer bugs, if any!).\n\n* /Bidirectionality/: The library provides a bidirectional type, called a\n'Proxy'.\n\n* /Extension Framework/: You can elegantly mix and match extensions to the\nbase type and easily create your own!\n\n* /Extensive Documentation/: Second to none!\n\nI recommend you begin by reading \"Control.Pipe.Tutorial\" which introduces the\nbasic concepts using the simpler 'Pipe' API.  Then move on to\n\"Control.Proxy.Tutorial\", which introduces the 'Proxy' type which forms the\ncore abstraction of this library.  To use extensions or define your own, check\nout \"Control.Proxy.Trans.Tutorial\".\n\nI will soon replace \"Control.Frame\" with a superior resource-management\nsolution, so new users of the library should avoid using it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."index-core" or (errorHandler.buildDepError "index-core"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }