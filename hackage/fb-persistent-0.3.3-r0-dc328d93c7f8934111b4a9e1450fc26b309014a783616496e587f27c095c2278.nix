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
      identifier = { name = "fb-persistent"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa";
      homepage = "https://github.com/prowdsponsor/fb-persistent";
      url = "";
      synopsis = "Provides Persistent instances to Facebook types.";
      description = "This package provides orphan Persistent instances to Facebook\ntypes.  It is needed because @fb@ package should not depend on\n@persistent@, and neither should @persistent@ depend on @fb@.\nUse this @fb-persistent@ package instead of providing your own\norphan instances.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fb" or (errorHandler.buildDepError "fb"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }