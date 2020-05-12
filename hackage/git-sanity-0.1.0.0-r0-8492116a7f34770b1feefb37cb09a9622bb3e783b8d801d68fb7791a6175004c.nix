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
      identifier = { name = "git-sanity"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "alois.cochard@gmail.com";
      author = "Alois Cochard";
      homepage = "github.com/aloiscochard/git-sanity";
      url = "";
      synopsis = "A sanity checker for your git history.";
      description = "This tool allow you sanity check the history of local git repository.\n\nA 'sane' history is one where there is no interleaved merged.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
          (hsPkgs."machines-io" or (errorHandler.buildDepError "machines-io"))
          (hsPkgs."machines-process" or (errorHandler.buildDepError "machines-process"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "git-sanity" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."git-sanity" or (errorHandler.buildDepError "git-sanity"))
            ];
          buildable = true;
          };
        };
      };
    }