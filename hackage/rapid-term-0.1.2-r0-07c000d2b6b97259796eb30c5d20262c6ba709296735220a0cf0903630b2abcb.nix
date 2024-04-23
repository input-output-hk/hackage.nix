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
    flags = { devel = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "rapid-term"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2016 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <esz@posteo.de>";
      author = "Ertugrul Söylemez <esz@posteo.de>";
      homepage = "https://github.com/esoeylemez/rapid-term";
      url = "";
      synopsis = "External terminal support for rapid";
      description = "When developing interactive command line applications in\nan editor like Emacs GHCi typically has no access to an actual\nterminal.  This is good enough for applications that only read lines\nfrom stdin and print diagnostics to stdout, but as soon as terminal\nfunctionality is needed, the application has to be tested elsewhere.\n\nThis package provides functionality that, when used together with\nthe <https://hackage.haskell.org/package/rapid rapid library>, can\nopen a persistent terminal that the application can access directly,\nsuch that terminal applications can be tested with the main GHCi\ninstance.\n\nYou can find a tutorial in the documentation of the @Rapid.Term@\nmodule.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ] ++ pkgs.lib.optional (flags.devel) (hsPkgs."rapid" or (errorHandler.buildDepError "rapid"));
        buildable = true;
      };
    };
  }