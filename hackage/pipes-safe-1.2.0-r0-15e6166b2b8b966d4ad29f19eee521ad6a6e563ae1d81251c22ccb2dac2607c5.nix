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
      specVersion = "1.8";
      identifier = { name = "pipes-safe"; version = "1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2013 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Safety for the pipes ecosystem";
      description = "This package adds resource management and exception handling to the @pipes@\necosystem.  Notable features include:\n\n* /Resource Safety/: Guarantee finalization using @finally@, @bracket@ and\nmore\n\n* /Laziness/: Only acquire resources when you need them\n\n* /Exception safe/: Even against asynchronous exceptions!\n\n* /Native Exception Handling/: Catch and resume from exceptions within any\n@Session@\n\n* /No Buy-in/: Managed pipes play nice with unmanaged pipes\n\nImport @Control.Proxy.Safe@ to use this library\n\nRead @Control.Proxy.Safe.Tutorial@ for an introductory tutorial.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
        ];
        buildable = true;
      };
    };
  }