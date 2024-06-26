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
      identifier = { name = "pngload"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Marko Lauronen";
      maintainer = "Marko Lauronen <marko.lauronen@pp1.inet.fi>";
      author = "Marko Lauronen <marko.lauronen@pp1.inet.fi>";
      homepage = "";
      url = "";
      synopsis = "Pure Haskell loader for PNG images";
      description = "This package provides a simple PNG loader for PNG images. It currently supports\n24bit RGB(A) images with no interlacing.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
        ];
        buildable = true;
      };
    };
  }