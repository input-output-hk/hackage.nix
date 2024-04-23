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
      identifier = { name = "acme-cuteboy"; version = "0.1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/acme-cuteboy";
      url = "";
      synopsis = "Maybe gives you a cute boy";
      description = "A package which exists solely to try and give\nthe user a cute boy. Executable and library are both\navailable.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "CuteBoy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."acme-cuteboy" or (errorHandler.buildDepError "acme-cuteboy"))
          ];
          buildable = true;
        };
      };
    };
  }