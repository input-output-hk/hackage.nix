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
      specVersion = "2.4";
      identifier = { name = "sayable"; version = "1.1.0.0"; };
      license = "ISC";
      copyright = "Galois Inc., 2022";
      maintainer = "kquick@galois.com";
      author = "Kevin Quick";
      homepage = "";
      url = "";
      synopsis = "Data structures, classes and operators for constructing context-adjusted pretty output";
      description = "\nThis package provides a set of data structures, classes and operators that\nfacilitate the construction of a Prettyprinter Doc object.  The difference\nbetween this an Prettyprinter is:\n\n* Additional \"saytag\" parameter that can be used to control the Doc rendering.\n\n* Brevity of syntax (using operators) designed to enhance conversion of\narguments and readability of messages and conversion";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          ];
        buildable = true;
        };
      };
    }