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
      specVersion = "1.6";
      identifier = { name = "AC-PPM"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrew Coppin <MathematicalOrchid@hotmail.com>";
      author = "Andrew Coppin";
      homepage = "";
      url = "";
      synopsis = "Trivial package for writing PPM images.";
      description = "This package is written in 100% Haskell and enables you to\nwrite PPM (\\\"Portable Pixel Map\\\") images in human-readable\ntext format as well as the more efficient binary format.\nIt uses the ByteString library for maximum efficiency.\nFor those that don't know, PPM is an image file format\nwhich is trivially simple, but therefore horribly inefficient.\nNone the less, many programs can read PPM files, so this\npackage represents an easy way to write Haskell code that\ngenerates images, without having to depend on any external\nC code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }