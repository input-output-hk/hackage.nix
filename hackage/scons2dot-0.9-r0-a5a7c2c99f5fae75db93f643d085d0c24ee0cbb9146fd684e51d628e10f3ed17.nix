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
      identifier = { name = "scons2dot"; version = "0.9"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Leandro Lisboa Penz <llpenz@gmail.com>";
      author = "Leandro Lisboa Penz";
      homepage = "";
      url = "";
      synopsis = "Generates graphviz file of scons dependency information";
      description = "This tool creates a graphviz dot file that represents\nbuild dependencies on a system built with scons.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "scons2dot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }