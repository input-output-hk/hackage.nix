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
    flags = { split-base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "bash"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "oss@solidsnack.be";
      author = "Jason Dusek";
      homepage = "http://github.com/solidsnack/bash";
      url = "";
      synopsis = "Bash generation library.";
      description = "A library for generation of Bash scripts, handling escaping, statement\ngrouping and expression formation at a high level.\n\nThe top-level module, Language.Bash, is all you need to import to access the\npackage's functionality. The module Language.Bash.Lib contains some\nexamples, as does the test script, tests.bash, included with the source\ndistribution.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."shell-escape" or (errorHandler.buildDepError "shell-escape"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."hxt-regex-xmlschema" or (errorHandler.buildDepError "hxt-regex-xmlschema"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
        ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }