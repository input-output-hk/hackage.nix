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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "gravatar"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<dons@galois.com>";
      author = "Don Stewart ";
      homepage = "http://code.haskell.org/~dons/code/gravatar";
      url = "";
      synopsis = "Find the url of the gravatar associated with an email address.";
      description = "Gravatars (<http://gravatar.com>) are globally unique images associated with an email\naddress, widely used in social networking sites. This library\nlets you find the URL of a gravatar .png associated with an email\naddress.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."nano-md5" or (errorHandler.buildDepError "nano-md5"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ] ++ (if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
      };
    };
  }