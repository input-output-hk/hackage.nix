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
      identifier = { name = "zlib-lens"; version = "0.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2014 Edward Kmett and Eric Mertens";
      maintainer = "Edward Kmett <ekmett@gmail.com>";
      author = "Edward Kmett and Eric Mertens";
      homepage = "http://lens.github.io/";
      url = "";
      synopsis = "Lenses for zlib";
      description = "Lenses for zlib";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          ];
        buildable = true;
        };
      };
    }