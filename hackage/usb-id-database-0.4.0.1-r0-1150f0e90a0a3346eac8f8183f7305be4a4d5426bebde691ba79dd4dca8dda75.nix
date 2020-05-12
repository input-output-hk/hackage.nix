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
    flags = { example = false; profile-example = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "usb-id-database"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Roel van Dijk";
      maintainer = "vandijk.roel@gmail.com";
      author = "Roel van Dijk";
      homepage = "";
      url = "";
      synopsis = "A database of USB identifiers";
      description = "Functions to find the names associated with various identifiers from the USB\nspecification. This is useful if you want to display full human-readable names\ninstead of cryptic numeric codes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."containers-unicode-symbols" or (errorHandler.buildDepError "containers-unicode-symbols"))
          (hsPkgs."parsimony" or (errorHandler.buildDepError "parsimony"))
          ];
        buildable = true;
        };
      exes = {
        "example" = { buildable = if flags.example then true else false; };
        };
      };
    }