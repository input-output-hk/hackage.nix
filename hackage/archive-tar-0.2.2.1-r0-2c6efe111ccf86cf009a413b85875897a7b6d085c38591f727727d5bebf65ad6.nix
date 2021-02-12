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
      identifier = { name = "archive-tar"; version = "0.2.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019-2020 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Common interface using the tar package";
      description = "Backpack-ified way to use [tar](http://hackage.haskell.org/package/tar) bindings";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.cpphs.components.exes.cpphs or (pkgs.buildPackages.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")))
          ];
        buildable = true;
        };
      };
    }