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
      identifier = { name = "waiz"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2026 Tony Morris";
      maintainer = "Tony Morris <tmorris@tmorris.net>";
      author = "Tony Morris <tmorris@tmorris.net>";
      homepage = "https://gitlab.com/tonymorris/waiz";
      url = "";
      synopsis = "Classy optics for the wai package";
      description = "Classy optics (@GetXXX@, @HasXXX@, @ReviewXXX@, @AsXXX@) for all\ndata types in the\n<https://hackage.haskell.org/package/wai wai> package.\n\nFor each data type in @wai@ (@Request@, @Response@, @FilePart@,\n@RequestBodyLength@), this package provides:\n\n* Getter type class (@GetXXX@)\n* Lens type class (@HasXXX@)\n* Review type class (@ReviewXXX@)\n* Prism type class (@AsXXX@)\n\nFor record types, individual field lenses are provided.\nFor sum types, constructor prisms with their own classy optics are provided.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
        ];
        buildable = true;
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."waiz" or (errorHandler.buildDepError "waiz"))
          ];
          buildable = true;
        };
      };
    };
  }