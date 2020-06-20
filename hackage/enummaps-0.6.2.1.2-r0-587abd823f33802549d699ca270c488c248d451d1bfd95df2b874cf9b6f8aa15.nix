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
      identifier = { name = "enummaps"; version = "0.6.2.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@leif.nz";
      author = "Leif Metcalf";
      homepage = "";
      url = "";
      synopsis = "Enum wrappers for IntMap and IntSet";
      description = "This package provides wrappers for IntMap and IntSet that allow one to use any type\nwith an Enum instance as a key.\n\nThe map functions in this library are monomorphic over the key type,\nunlike those in enummapset-th.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      };
    }