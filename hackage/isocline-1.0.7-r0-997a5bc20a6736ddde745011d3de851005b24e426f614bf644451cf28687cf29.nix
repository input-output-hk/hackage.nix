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
      identifier = { name = "isocline"; version = "1.0.7"; };
      license = "MIT";
      copyright = "";
      maintainer = "daan@effp.org";
      author = "Daan Leijen";
      homepage = "https://github.com/daanx/isocline#readme";
      url = "";
      synopsis = "A portable alternative to GNU Readline";
      description = "![logo](https://raw.githubusercontent.com/daanx/isocline/main/doc/isocline-inline.svg) A Haskell wrapper around the [Isocline C library](https://github.com/daanx/isocline#readme) which can provide an alternative to GNU Readline. (The Isocline library is included whole and there are no runtime dependencies).\nPlease see the [readme](https://github.com/daanx/isocline/haskell#readme) on GitHub for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."isocline" or (errorHandler.buildDepError "isocline"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."isocline" or (errorHandler.buildDepError "isocline"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }