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
      specVersion = "1.2";
      identifier = { name = "snow-white"; version = "2009.12.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/snow-white";
      url = "";
      synopsis = "encode any binary instance to white space";
      description = "SnowWhite.pack \"hello\"\n>\nSnowWhite.unpack \"                                                             \t \t \t\t \t    \t\t  \t \t \t\t \t\t   \t\t \t\t   \t\t \t\t\t\t\"\n> hello";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mps" or (errorHandler.buildDepError "mps"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
        ];
        buildable = true;
      };
    };
  }