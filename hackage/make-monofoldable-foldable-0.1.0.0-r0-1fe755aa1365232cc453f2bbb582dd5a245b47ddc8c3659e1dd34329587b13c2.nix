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
      specVersion = "1.10";
      identifier = {
        name = "make-monofoldable-foldable";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "clintonmead@gmail.com";
      author = "Clinton Mead";
      homepage = "";
      url = "";
      synopsis = "Make a MonoFoldable type into an ordinary Foldable type.";
      description = "For a container to be  \"Foldable\", it must be able to accept all types. This means that ByteStrings and unboxed arrays/vectors\nare not foldable, as they have restrictions on their elements. This wrapper makes them Foldable.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
        ];
        buildable = true;
      };
    };
  }