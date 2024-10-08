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
      identifier = { name = "acme-strtok"; version = "0.1.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "last name + m _at_ in.tum.de";
      author = "Manuel Eberl";
      homepage = "";
      url = "";
      synopsis = "A Haskell port of the C/PHP strtok function";
      description = "This package provides a Haskell version of the strtok function from C/PHP. Successive calls of this function return tokens (delimited by given delimiting characters) from a string (or a list), one by one.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }