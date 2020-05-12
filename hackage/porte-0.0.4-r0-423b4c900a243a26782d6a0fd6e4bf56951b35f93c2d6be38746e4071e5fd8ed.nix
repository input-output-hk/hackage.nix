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
      specVersion = "1.2";
      identifier = { name = "porte"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sbahra@repnop.org";
      author = "Samy Al Bahra";
      homepage = "";
      url = "";
      synopsis = "FreeBSD ports index search and analysis tool";
      description = "Porte provides a simple, fast and efficient interface to searching\nFreeBSD ports index fields. It also has a simple statistics mode which\nallows collecting frequency statistics for these fields.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."stringsearch" or (errorHandler.buildDepError "stringsearch"))
          ];
        buildable = true;
        };
      exes = { "porte" = { buildable = true; }; };
      };
    }