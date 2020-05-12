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
      identifier = { name = "shell-escape"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "oss@solidsnack.be";
      author = "Jason Dusek";
      homepage = "http://github.com/solidsnack/shell-escape";
      url = "";
      synopsis = "Shell escaping library.";
      description = "Shell escaping library, offering both Bourne shell and Bash style escaping\nof ByteStrings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }