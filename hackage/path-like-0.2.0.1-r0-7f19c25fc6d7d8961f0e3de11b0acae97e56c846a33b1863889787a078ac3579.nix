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
      identifier = { name = "path-like"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "2020 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "PathLike, FileLike and DirLike type classes for the Path library.";
      description = "Type classes for the Path library. Exports PathLike, FileLike and DirLike classes so that stricter types may be used as Paths.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          ];
        buildable = true;
        };
      };
    }