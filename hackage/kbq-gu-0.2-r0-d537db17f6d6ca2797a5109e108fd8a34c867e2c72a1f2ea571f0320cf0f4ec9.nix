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
      specVersion = "1.2";
      identifier = { name = "kbq-gu"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "copyleft, share whatever you modify and any derivatives as well, including modules, additions and everything else.";
      maintainer = "andrii.z@gmail.com";
      author = "Zvorygin, Andrii (Lowki) ";
      homepage = "http://tcana.info/rpoku";
      url = "";
      synopsis = "Rpoku spoken word programming language";
      description = "Rpoku spoken word programming language compilers or translators";
      buildType = "Simple";
      };
    components = {
      exes = {
        "rpokuToAssembler" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "rpokuToLanguage" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }