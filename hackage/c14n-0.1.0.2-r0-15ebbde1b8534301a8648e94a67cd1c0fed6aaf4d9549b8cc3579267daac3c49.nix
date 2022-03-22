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
      identifier = { name = "c14n"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "Copyright (c) Michael B. Gale";
      maintainer = "github@michael-gale.co.uk";
      author = "Michael B. Gale";
      homepage = "https://github.com/mbg/c14n#readme";
      url = "";
      synopsis = "Bindings to the c14n implementation in libxml.";
      description = "Haskell bindings for the c14n implementation in libxml (XML canonicalisation). See the README at <https://github.com/mbg/c14n#readme> for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [ (pkgs."xml2" or (errorHandler.sysDepError "xml2")) ];
        pkgconfig = [
          (pkgconfPkgs."libxml-2.0" or (errorHandler.pkgConfDepError "libxml-2.0"))
          ];
        buildable = true;
        };
      };
    }