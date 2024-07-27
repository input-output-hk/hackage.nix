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
    flags = { ghcflags = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "stack2cabal"; version = "1.0.14"; };
      license = "GPL-3.0-only";
      copyright = "2018 Tseen She, 2020 Julian Ospald";
      maintainer = "Julian Ospald";
      author = "Tseen She";
      homepage = "";
      url = "";
      synopsis = "Convert stack projects to cabal.project + cabal.project.freeze";
      description = "Convert @stack.yaml@ \\/ @package.yaml@ to @cabal.project@ \\/ @cabal.project.freeze@\\/ @*.cabal@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."filepattern" or (errorHandler.buildDepError "filepattern"))
          (hsPkgs."fuzzy-dates" or (errorHandler.buildDepError "fuzzy-dates"))
          (hsPkgs."hourglass" or (errorHandler.buildDepError "hourglass"))
          (hsPkgs."hpack" or (errorHandler.buildDepError "hpack"))
          (hsPkgs."HsYAML" or (errorHandler.buildDepError "HsYAML"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ pkgs.lib.optional (flags.ghcflags) (hsPkgs."ghcflags" or (errorHandler.buildDepError "ghcflags"));
        build-tools = pkgs.lib.optional (flags.ghcflags) (hsPkgs.pkgsBuildBuild.hsinspect.components.exes.hsinspect or (pkgs.pkgsBuildBuild.hsinspect or (errorHandler.buildToolDepError "hsinspect:hsinspect")));
        buildable = true;
      };
      exes = {
        "stack2cabal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."filepattern" or (errorHandler.buildDepError "filepattern"))
            (hsPkgs."fuzzy-dates" or (errorHandler.buildDepError "fuzzy-dates"))
            (hsPkgs."hourglass" or (errorHandler.buildDepError "hourglass"))
            (hsPkgs."hpack" or (errorHandler.buildDepError "hpack"))
            (hsPkgs."HsYAML" or (errorHandler.buildDepError "HsYAML"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."stack2cabal" or (errorHandler.buildDepError "stack2cabal"))
          ] ++ pkgs.lib.optional (flags.ghcflags) (hsPkgs."ghcflags" or (errorHandler.buildDepError "ghcflags"));
          build-tools = pkgs.lib.optional (flags.ghcflags) (hsPkgs.pkgsBuildBuild.hsinspect.components.exes.hsinspect or (pkgs.pkgsBuildBuild.hsinspect or (errorHandler.buildToolDepError "hsinspect:hsinspect")));
          buildable = true;
        };
      };
    };
  }