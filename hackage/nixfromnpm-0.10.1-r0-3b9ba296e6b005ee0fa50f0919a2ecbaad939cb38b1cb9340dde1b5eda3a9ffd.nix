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
      identifier = { name = "nixfromnpm"; version = "0.10.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "anelson@narrativescience.com";
      author = "Allen Nelson";
      homepage = "";
      url = "";
      synopsis = "Generate nix expressions from npm packages.";
      description = "Given an npm package name and one or more npm repositories, will dump out a\ncollection of nix files, one each for the initial package and all of its\ndependencies. Will generate a top-level 'default.nix' which returns a set\ncontaining all of these expressions. Subsequent invocations of the program\nusing the same target directory will result in re-use of the existing files,\nto avoid unnecessary duplication.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "nixfromnpm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."classy-prelude" or (errorHandler.buildDepError "classy-prelude"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."text-render" or (errorHandler.buildDepError "text-render"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hnix" or (errorHandler.buildDepError "hnix"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."semver-range" or (errorHandler.buildDepError "semver-range"))
            (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
            ];
          buildable = true;
          };
        };
      };
    }