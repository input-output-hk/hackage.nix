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
      identifier = { name = "eio"; version = "0.0.0.0"; };
      license = "MPL-2.0";
      copyright = "2021 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Kowainik";
      homepage = "https://github.com/kowainik/eio";
      url = "";
      synopsis = "IO with Exceptions tracked on the type-level";
      description = "IO with Exceptions tracked on the type-level.\nSee [README.md](https://github.com/kowainik/eio#eio) for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "readme" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."eio" or (errorHandler.buildDepError "eio"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit.components.exes.markdown-unlit or (pkgs.buildPackages.markdown-unlit or (errorHandler.buildToolDepError "markdown-unlit:markdown-unlit")))
            ];
          buildable = true;
          };
        };
      };
    }