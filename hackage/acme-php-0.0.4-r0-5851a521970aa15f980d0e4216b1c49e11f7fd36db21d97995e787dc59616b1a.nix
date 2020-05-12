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
      identifier = { name = "acme-php"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "headprogrammingczar@gmail.com";
      author = "JoeQuinn";
      homepage = "";
      url = "";
      synopsis = "The flexibility of Haskell and the safety of PHP";
      description = "At last, a module that combines the dynamic flexibility of Haskell with the strong design principles of PHP!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."acme-left-pad" or (errorHandler.buildDepError "acme-left-pad"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }