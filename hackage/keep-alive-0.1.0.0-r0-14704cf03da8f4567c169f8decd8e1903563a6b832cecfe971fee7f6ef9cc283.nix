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
      identifier = { name = "keep-alive"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Kyriakos Papachrysanthou";
      maintainer = "papachrysanthou.k@gmail.com";
      author = "Kyriakos Papachrysanthou";
      homepage = "https://github.com/3kyro/keep-alive#readme";
      url = "";
      synopsis = "TCP keep alive implementation";
      description = "This module allows you to set per-connection keep alive parameters on windows and linux enviroments.\nFor more information on keep alive signals see <https://en.wikipedia.org/wiki/Keepalive>.\nSee also <https://tldp.org/HOWTO/html_single/TCP-Keepalive-HOWTO/> for a linux specific implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "keep-alive-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."keep-alive" or (errorHandler.buildDepError "keep-alive"))
            ];
          buildable = true;
          };
        };
      };
    }