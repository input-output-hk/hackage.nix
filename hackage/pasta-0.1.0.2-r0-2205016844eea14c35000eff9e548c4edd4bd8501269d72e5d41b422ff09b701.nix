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
      identifier = { name = "pasta"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2015 Diogo Biazus";
      maintainer = "diogo@biazus.me";
      author = "Diogo Biazus";
      homepage = "http://github.com/diogob/pasta#readme";
      url = "";
      synopsis = "PostgreSQL Abstract Syntax Tree Assember";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          ];
        buildable = true;
        };
      tests = {
        "pasta-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pasta" or (errorHandler.buildDepError "pasta"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            ];
          buildable = true;
          };
        };
      };
    }