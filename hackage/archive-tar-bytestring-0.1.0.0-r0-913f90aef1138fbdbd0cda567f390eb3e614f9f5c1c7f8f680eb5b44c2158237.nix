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
    flags = { development = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "archive-tar-bytestring"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2020 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Common interface using the tar-bytestring package";
      description = "Backpack-ified way to use [tar-bytestring](http://hackage.haskell.org/package/tar-bytestring) bindings";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tar-bytestring" or (errorHandler.buildDepError "tar-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.cpphs.components.exes.cpphs or (pkgs.buildPackages.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")))
          ];
        buildable = true;
        };
      };
    }