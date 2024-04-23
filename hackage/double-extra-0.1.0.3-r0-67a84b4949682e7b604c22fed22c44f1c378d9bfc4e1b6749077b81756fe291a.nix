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
    flags = { cassava = true; rawstring-qm = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "double-extra"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2017(c) Marcin Tolysz";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/double-extra#readme";
      url = "";
      synopsis = "Missing presentations for Double numbers (fixed, scientific etc.)";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ] ++ pkgs.lib.optional (flags.cassava) (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))) ++ pkgs.lib.optionals (flags.rawstring-qm) [
          (hsPkgs."rawstring-qm" or (errorHandler.buildDepError "rawstring-qm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }