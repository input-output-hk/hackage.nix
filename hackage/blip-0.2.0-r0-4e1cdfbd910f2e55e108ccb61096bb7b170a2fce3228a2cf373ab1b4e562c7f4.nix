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
      identifier = { name = "blip"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bernie Pope <florbitous@gmail.com>";
      author = "Bernie Pope";
      homepage = "https://github.com/bjpop/blip  ";
      url = "";
      synopsis = "Python to bytecode compiler.";
      description = "Compiles Python 3 source code to bytecode. The resulting\nbytecode is written to a '.pyc' file, compatible with the\nCPython implementation (the default Python interpreter).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "blip" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bliplib" or (errorHandler.buildDepError "bliplib"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."parseargs" or (errorHandler.buildDepError "parseargs"))
            (hsPkgs."language-python" or (errorHandler.buildDepError "language-python"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }