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
      identifier = { name = "hastache"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "Sergey S Lymar (c) 2011-2012";
      maintainer = "Sergey S Lymar <sergey.lymar@gmail.com>";
      author = "Sergey S Lymar <sergey.lymar@gmail.com>";
      homepage = "http://github.com/lymar/hastache";
      url = "";
      synopsis = "Haskell implementation of Mustache templates";
      description = "Haskell implementation of Mustache templates (<http://mustache.github.com/>).\n\nSee homepage for examples of usage: <http://github.com/lymar/hastache>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
        ];
        buildable = true;
      };
    };
  }