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
      identifier = { name = "hs-rs-notify"; version = "0.1.0.7"; };
      license = "BSD-3-Clause";
      copyright = "2018 NoRedInk";
      maintainer = "christoph@noredink.com";
      author = "Christoph Hermann";
      homepage = "https://github.com/NoRedInk/hs-rs-notify#readme";
      url = "";
      synopsis = "Experimental! Wraps this awesome rust library so you can use it in haskell. https://docs.rs/crate/notify";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      tests = {
        "hs-rs-notify-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-rs-notify" or (errorHandler.buildDepError "hs-rs-notify"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            ];
          buildable = true;
          };
        };
      };
    }