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
      identifier = { name = "hascalam"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "sjb.ia.ga@gmail.com";
      author = "Sebastian Gliţa-Catina";
      homepage = "https://github.com/sjbiaga/hascalam";
      url = "";
      synopsis = "Haskell to and from Scalameta";
      description = "Use a script to convert from Scalameta\nSource string to mirroring Haskell\nclasses, types and instances. Use the\nShow instances to convert from mirrored\nHaskell types to Scalameta string.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }