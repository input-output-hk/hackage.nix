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
      specVersion = "2.4";
      identifier = { name = "shellmet"; version = "0.0.2.0"; };
      license = "MPL-2.0";
      copyright = "2019 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Dmitrii Kovanikov";
      homepage = "https://github.com/kowainik/shellmet";
      url = "";
      synopsis = "Out of the shell solution for scripting in Haskell";
      description = "Shellmet provides easy and convenient way to call shell commands from Haskell programs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "readme" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."shellmet" or (errorHandler.buildDepError "shellmet"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit.components.exes.markdown-unlit or (pkgs.buildPackages.markdown-unlit or (errorHandler.buildToolDepError "markdown-unlit:markdown-unlit")))
            ];
          buildable = true;
          };
        };
      tests = {
        "shellmet-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."shellmet" or (errorHandler.buildDepError "shellmet"))
            ];
          buildable = true;
          };
        };
      };
    }