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
      identifier = { name = "XAttr"; version = "0.1.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "tensor5@gmail.com";
      author = "Nicola Squartini <tensor5@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Read, set, and list extended attributes";
      description = "This package is obsolete. Use <http://hackage.haskell.org/package/linux-xattr> instead.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      };
    }