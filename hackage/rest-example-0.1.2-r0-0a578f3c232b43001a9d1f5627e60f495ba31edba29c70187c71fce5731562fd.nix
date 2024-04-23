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
    flags = { happstack = false; wai = false; snap = false; gen = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "rest-example"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2014 Silk B.V.";
      maintainer = "code@silk.co";
      author = "Silk B.V.";
      homepage = "http://www.github.com/silkapp/rest";
      url = "";
      synopsis = "Example project for rest";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."generic-aeson" or (errorHandler.buildDepError "generic-aeson"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."json-schema" or (errorHandler.buildDepError "json-schema"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."regular" or (errorHandler.buildDepError "regular"))
          (hsPkgs."regular-xmlpickler" or (errorHandler.buildDepError "regular-xmlpickler"))
          (hsPkgs."rest-core" or (errorHandler.buildDepError "rest-core"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      exes = {
        "rest-example-happstack" = {
          depends = pkgs.lib.optionals (flags.happstack) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."rest-core" or (errorHandler.buildDepError "rest-core"))
            (hsPkgs."rest-example" or (errorHandler.buildDepError "rest-example"))
            (hsPkgs."rest-happstack" or (errorHandler.buildDepError "rest-happstack"))
          ];
          buildable = if flags.happstack then true else false;
        };
        "rest-example-wai" = {
          depends = pkgs.lib.optionals (flags.wai) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."rest-core" or (errorHandler.buildDepError "rest-core"))
            (hsPkgs."rest-example" or (errorHandler.buildDepError "rest-example"))
            (hsPkgs."rest-wai" or (errorHandler.buildDepError "rest-wai"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
          buildable = if flags.wai then true else false;
        };
        "rest-example-snap" = {
          depends = pkgs.lib.optionals (flags.snap) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."rest-core" or (errorHandler.buildDepError "rest-core"))
            (hsPkgs."rest-example" or (errorHandler.buildDepError "rest-example"))
            (hsPkgs."rest-snap" or (errorHandler.buildDepError "rest-snap"))
            (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
            (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
          ];
          buildable = if flags.snap then true else false;
        };
        "rest-example-gen" = {
          depends = pkgs.lib.optionals (flags.gen) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."rest-core" or (errorHandler.buildDepError "rest-core"))
            (hsPkgs."rest-example" or (errorHandler.buildDepError "rest-example"))
            (hsPkgs."rest-gen" or (errorHandler.buildDepError "rest-gen"))
          ];
          buildable = if flags.gen then true else false;
        };
      };
    };
  }