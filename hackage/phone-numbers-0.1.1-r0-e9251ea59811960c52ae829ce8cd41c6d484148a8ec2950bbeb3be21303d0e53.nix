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
      specVersion = "1.8";
      identifier = { name = "phone-numbers"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Christian Marie <christian@ponies.io>";
      author = "Christian Marie <christian@ponies.io>";
      homepage = "https://github.com/christian-marie/phone-numbers";
      url = "";
      synopsis = "Haskell bindings to the libphonenumber library";
      description = "Basic phone number parsing, largely incomplete, please submit a pull\nrequest or issue if you'd like more exposed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [
          (pkgs."phonenumber" or (errorHandler.sysDepError "phonenumber"))
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          (pkgs."protobuf" or (errorHandler.sysDepError "protobuf"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."phone-numbers" or (errorHandler.buildDepError "phone-numbers"))
            ];
          buildable = true;
          };
        };
      };
    }