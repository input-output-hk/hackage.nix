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
      identifier = { name = "trurl"; version = "0.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "d.bushenko@gmail.com";
      author = "dbushenko";
      homepage = "http://github.com/dbushenko/trurl";
      url = "";
      synopsis = "Haskell template code generator";
      description = "Trurl is a haskell project and code generating utility. Use it for scaffolding your projects and entities.\nQuick start:\n\ncabal update\n\ncabal install trurl\n\ntrurl create MyProject scotty-mysql\n\nTrurl allows creating your own templates for projects as well as for files. Just put them to ~/.trurl/repo.\nFor more details read here http://github.com/dbushenko/trurl";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
          (hsPkgs."hastache" or (errorHandler.buildDepError "hastache"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          ];
        buildable = true;
        };
      exes = {
        "trurl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."trurl" or (errorHandler.buildDepError "trurl"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hastache" or (errorHandler.buildDepError "hastache"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."trurl" or (errorHandler.buildDepError "trurl"))
            ];
          buildable = true;
          };
        };
      };
    }