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
      specVersion = "1.6";
      identifier = { name = "idna"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "George Pollard <porges@porg.es>";
      author = "George Pollard <porges@porg.es>";
      homepage = "";
      url = "";
      synopsis = "Implements IDNA (RFC 3490).";
      description = "Implements IDNA - Internationalized Domain Names in Applications (RFC 3490).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stringprep" or (errorHandler.buildDepError "stringprep"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."punycode" or (errorHandler.buildDepError "punycode"))
        ];
        buildable = true;
      };
    };
  }