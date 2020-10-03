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
      identifier = { name = "hasql-pipes"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Paolo Veronelli";
      maintainer = "paolo.veronelli@gmail.com";
      author = "Paolo Veronelli";
      homepage = "https://github.com/https://gitlab.com/paolo.veronelli/hasql-pipes#readme";
      url = "";
      synopsis = "A pipe to stream a postgres database cursor in the hasql ecosystem";
      description = "Please see the README on GitLab at <https://gitlab.com/paolo.veronelli/hasql-pipes>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring-tree-builder" or (errorHandler.buildDepError "bytestring-tree-builder"))
          (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          ];
        buildable = true;
        };
      };
    }