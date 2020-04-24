{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "simple-sessions"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tov@ccs.neu.edu";
      author = "Jesse A. Tov <tov@ccs.neu.edu>";
      homepage = "http://www.ccs.neu.edu/~tov/session-types";
      url = "";
      synopsis = "A simple implementation of session types";
      description = "This library is based on the session types implementation\nfrom \"Haskell Session Types with Almost No Class,\" from the 2008\nHaskell Symposium.  For a full-featured session types library,\nsee the sessions package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."category-extras" or ((hsPkgs.pkgs-errors).buildDepError "category-extras"))
          ];
        buildable = true;
        };
      };
    }