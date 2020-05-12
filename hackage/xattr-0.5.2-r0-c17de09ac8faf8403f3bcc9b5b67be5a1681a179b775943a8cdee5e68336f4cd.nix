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
      identifier = { name = "xattr"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 by Evan Klitzke";
      maintainer = "Evan Klitzke <evan@eklitzke.org>";
      author = "Evan Klitzke";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to libattr";
      description = "Relatively low-level interface to work with extended attributes on Unix\nsystems. This is a fairly straightforward port of the API exposed by SGI's\nlibattr.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      };
    }