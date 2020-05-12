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
      specVersion = "1.8";
      identifier = { name = "xml-picklers"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Philipp Balzarek";
      author = "Philipp Balzarek";
      homepage = "";
      url = "";
      synopsis = "XML picklers based on xml-types, ported from hexpat-pickle";
      description = "A library of combinators that allows Haskell data structures to be pickled\n(serialized) to/from a representation of XML as defined in xml-types\n\nRelease history\n\n[0.2] Error system overhaul. New picklers: @xpSubsetAll@, @xpElems@\n\n[0.1] Initial release";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }