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
      identifier = { name = "hakyll-process"; version = "0.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Jim McStanton";
      maintainer = "jim@jhmcstanton.com";
      author = "Jim McStanton";
      homepage = "https://github.com/jhmcstanton/hakyll-process#readme";
      url = "";
      synopsis = "Hakyll compiler for arbitrary external processes.";
      description = "Exposes Hakyll compilers for passing file paths to external processes.\nTransformed results are made available as Hakyll `Items`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          ];
        buildable = true;
        };
      };
    }