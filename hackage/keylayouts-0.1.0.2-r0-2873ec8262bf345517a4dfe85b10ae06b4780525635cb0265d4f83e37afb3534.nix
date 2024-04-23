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
      specVersion = "1.12";
      identifier = { name = "keylayouts"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "2020 Dai";
      maintainer = "daig@sodality.cc";
      author = "Dai";
      homepage = "https://github.com/daig/keylayouts#readme";
      url = "";
      synopsis = "Tools for macOS .keylayout files";
      description = "Datatypes, parsing, and printing for .keylayout files, Used for advanced keyboard mappings on macOS. https://developer.apple.com/library/archive/technotes/tn2056/_index.html";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."xeno" or (errorHandler.buildDepError "xeno"))
        ];
        buildable = true;
      };
    };
  }