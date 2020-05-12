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
      identifier = { name = "stack2cabal"; version = "1.0.6"; };
      license = "GPL-3.0-or-later";
      copyright = "2018 Tseen She";
      maintainer = "Tseen She";
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
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hpack" or (errorHandler.buildDepError "hpack"))
          (hsPkgs."HsYAML" or (errorHandler.buildDepError "HsYAML"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optional (flags.ghcflags) (hsPkgs."ghcflags" or (errorHandler.buildDepError "ghcflags"));
        build-tools = (pkgs.lib).optional (flags.ghcflags) (hsPkgs.buildPackages.hsinspect or (pkgs.buildPackages.hsinspect or (errorHandler.buildToolDepError "hsinspect")));
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
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hpack" or (errorHandler.buildDepError "hpack"))
            (hsPkgs."HsYAML" or (errorHandler.buildDepError "HsYAML"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."stack2cabal" or (errorHandler.buildDepError "stack2cabal"))
            ] ++ (pkgs.lib).optional (flags.ghcflags) (hsPkgs."ghcflags" or (errorHandler.buildDepError "ghcflags"));
          build-tools = (pkgs.lib).optional (flags.ghcflags) (hsPkgs.buildPackages.hsinspect or (pkgs.buildPackages.hsinspect or (errorHandler.buildToolDepError "hsinspect")));
          buildable = true;
          };
        };
      };
    }