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
      specVersion = "1.6";
      identifier = { name = "explicit-exception"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Exception";
      url = "";
      synopsis = "Exceptions which are explicit in the type signature.";
      description = "Synchronous and Asynchronous exceptions which are explicit in the type signature.\nThe first ones are very similar to 'Either' and 'Control.Monad.Error.ErrorT'.\nThe second ones are used for 'System.IO.readFile' and 'System.IO.hGetContents'.\nThis package is a proposal for improved exception handling in Haskell.\nIt strictly separates between handling of\nexceptional situations (file not found, invalid user input,\nsee <http://www.haskell.org/haskellwiki/Exception>) and\n(programming) errors (division by zero, index out of range,\nsee <http://www.haskell.org/haskellwiki/Error>).\nHandling of the first one is called \\\"exception handling\\\",\nwhereas handling of errors is better known as \\\"debugging\\\".\n\nFor an application see the @midi@ package.\n\nAlthough I'm not happy with the identifier style of the Monad Template Library\n(partially intended for unqualified use)\nI have tried to adopt it for this library,\nin order to let Haskell programmers get accustomed easily to it.\n\nTo do:\nBecause many people requested it,\nwe will provide a @bracket@ function that frees a resource\nboth when an exception and an error occurs,\nthat is, it combines exception handling and debugging.\nHowever note that freeing resources in case of an error is dangerous\nand may cause further damage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }