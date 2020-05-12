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
      identifier = { name = "pprecord"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "36929366+paroxayte@users.noreply.github.com";
      author = "paroxayte";
      homepage = "https://github.com/paroxayte/pprecord";
      url = "";
      synopsis = "A library for pretty printing Records";
      description = "A pretty-printing library which is accumulates record\naccessors as Strings, and fields as Strings or formatted\nboxes. Functions are included to output lists of records as\na table, or apply a format to individual records.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
          ];
        buildable = true;
        };
      };
    }