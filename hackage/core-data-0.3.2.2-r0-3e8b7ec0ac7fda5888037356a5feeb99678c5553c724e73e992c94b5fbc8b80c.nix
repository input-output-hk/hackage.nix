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
      identifier = { name = "core-data"; version = "0.3.2.2"; };
      license = "MIT";
      copyright = "© 2018-2022 Athae Eredh Siniath and Others";
      maintainer = "Andrew Cowie <istathar@gmail.com>";
      author = "Andrew Cowie <istathar@gmail.com>";
      homepage = "https://github.com/aesiniath/unbeliever#readme";
      url = "";
      synopsis = "Convenience wrappers around common data structures and encodings";
      description = "Wrappers around common data structures and encodings.\n\nThis is part of a library intended to ease interoperability and assist in\nbuilding command-line programs, both tools and longer-running daemons.\nA list of features and some background to the library's design is contained\nin the\n<https://github.com/aesiniath/unbeliever/blob/master/README.markdown README>\non GitHub.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."core-text" or (errorHandler.buildDepError "core-text"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }