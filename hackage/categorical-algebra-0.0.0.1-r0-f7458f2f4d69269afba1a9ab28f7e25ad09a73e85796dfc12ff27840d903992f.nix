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
      specVersion = "1.2";
      identifier = { name = "categorical-algebra"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "";
      url = "";
      synopsis = "Categorical Monoids and Semirings";
      description = "This my attempt at synthesizing a few ideas about invertible programming with Arrow like type classes. Here is a link to pdf produced from the source <https://takeittothelimit.files.wordpress.com/2012/03/semiring.pdf> And here is a blog post that says basically the same thing. <http://takeittothelimit.wordpress.com/2012/03/26/categorical-semirings-2/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."newtype" or (errorHandler.buildDepError "newtype"))
          (hsPkgs."pointless-haskell" or (errorHandler.buildDepError "pointless-haskell"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
        ];
        buildable = true;
      };
    };
  }