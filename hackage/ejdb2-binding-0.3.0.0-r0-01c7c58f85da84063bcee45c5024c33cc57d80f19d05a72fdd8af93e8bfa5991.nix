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
      specVersion = "2.4";
      identifier = { name = "ejdb2-binding"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "2020 Francesco Burelli";
      maintainer = "francesco.burelli@protonmail.com";
      author = "Francesco Burelli";
      homepage = "https://github.com/cescobaz/ejdb2haskell#readme";
      url = "";
      synopsis = "Binding to EJDB2 C library, an embedded JSON noSQL database";
      description = "Binding to EJDB2 C library, an embedded JSON noSQL database. Package requires libejdb2 to build. Please see the README on GitHub at <https://github.com/cescobaz/ejdb2haskell#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        libs = [ (pkgs."ejdb2" or (errorHandler.sysDepError "ejdb2")) ];
        pkgconfig = [
          (pkgconfPkgs."libejdb2" or (errorHandler.pkgConfDepError "libejdb2"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "ejdb2haskell-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ejdb2-binding" or (errorHandler.buildDepError "ejdb2-binding"))
            ];
          buildable = true;
          };
        };
      };
    }