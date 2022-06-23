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
      specVersion = "1.20";
      identifier = {
        name = "http-client-brread-timeout";
        version = "0.1.0.0";
        };
      license = "MIT";
      copyright = "2022 Alexey Radkov";
      maintainer = "Alexey Radkov <alexey.radkov@gmail.com>";
      author = "Alexey Radkov <alexey.radkov@gmail.com>";
      homepage = "https://github.com/lyokha/http-client-brread-timeout";
      url = "";
      synopsis = "Http client with time-limited brRead";
      description = "Http client with timeouts applied in between body read events.\n\nNote that the response timeout in /http-client/ is applied only when\nreceiving the response headers which is not always satisfactory given\nthat a slow server may send the rest of the response very slowly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }