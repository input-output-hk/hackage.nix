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
      identifier = { name = "hmatrix-mmap"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Daniel Peebles 2010, (c) Alan Falloon 2011";
      maintainer = "Alan Falloon <alan.falloon@gmail.com>";
      author = "Daniel Peebles <pumpkingod@gmail.com>, Alan Falloon <alan.falloon@gmail.com>";
      homepage = "http://github.com/alanfalloon/hmatrix-mmap";
      url = "";
      synopsis = "Memory map Vector from disk into memory efficiently";
      description = "Memory map Data.Packed.Vector.Vector from disk into memory efficiently.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
        ];
        buildable = true;
      };
    };
  }