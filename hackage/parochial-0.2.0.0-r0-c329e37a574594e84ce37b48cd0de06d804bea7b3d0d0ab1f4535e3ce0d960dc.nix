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
      specVersion = "2.2";
      identifier = { name = "parochial"; version = "0.2.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "2020 ­ Richard Heycock";
      maintainer = "rgh@filterfish.org";
      author = "Richard Heycock";
      homepage = "https://gitlab.com/filterfish/parochial";
      url = "";
      synopsis = "Help Manage project specific documentation";
      description = "Parochial helps manage local documentation by creating an index of\na project's html, it also builds a hoogle index. In both instances\nthe project's transitive dependencies are included.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."hoogle" or (errorHandler.buildDepError "hoogle"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hackage-db" or (errorHandler.buildDepError "hackage-db"))
          (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
          (hsPkgs."posix-paths" or (errorHandler.buildDepError "posix-paths"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."filepattern" or (errorHandler.buildDepError "filepattern"))
          ];
        buildable = true;
        };
      exes = {
        "parochial" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."parochial" or (errorHandler.buildDepError "parochial"))
            ];
          buildable = true;
          };
        };
      };
    }