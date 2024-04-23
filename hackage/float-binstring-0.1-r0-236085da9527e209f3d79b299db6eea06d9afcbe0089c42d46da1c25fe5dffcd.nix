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
      identifier = { name = "float-binstring"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2013 Anton Nikishaev";
      maintainer = "Anton Nikishaev <me@lelf.lu>";
      author = "Anton Nikishaev <me@lelf.lu>";
      homepage = "https://github.com/llelf/float-binstring";
      url = "";
      synopsis = "C99 printf \"%a\" style formatting and parsing";
      description = "Format and parse floating point values as C99 printf/scanf with\nformat string %a do";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
    };
  }