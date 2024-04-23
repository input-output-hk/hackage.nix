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
      specVersion = "3.0";
      identifier = { name = "memfd"; version = "1.0.1.1"; };
      license = "Apache-2.0";
      copyright = "2022 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/memfd";
      url = "";
      synopsis = "Open temporary anonymous Linux file handles";
      description = "\"memfd\" (__mem__ory __f__ile __d__escriptor) lets us open pseudo-\"files\" that\nare not actually stored in the \"real\" file system. This feature is only\navailable on Linux.\n\nSuch a file is described as an \"anonymous file\". It behaves like a regular file,\nand so can be modified, truncated, memory-mapped, and so on. However, unlike a\nregular file, it lives in RAM and has a volatile backing storage. Once all\nreferences to the file are dropped, it is automatically released.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }