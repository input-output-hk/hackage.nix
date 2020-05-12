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
    flags = { developer = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "subtitleParser"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ruben Astudillo  <ruben.astud@gmail.com>";
      author = "Ruben Astudillo  <ruben.astud@gmail.com>";
      homepage = "https://patch-tag.com/r/rubenAst/subtitleParser/home";
      url = "";
      synopsis = "A parser for .srt and .sub files";
      description = "A basic .srt and .sub parser based on attoparsec and text ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      };
    }