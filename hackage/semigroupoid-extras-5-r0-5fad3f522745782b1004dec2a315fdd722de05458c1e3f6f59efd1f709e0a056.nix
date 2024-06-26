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
    flags = { profunctors = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "semigroupoid-extras"; version = "5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011-2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/semigroupoid-extras";
      url = "";
      synopsis = "Semigroupoids that depend on PolyKinds";
      description = "Semigroupoids that depend on PolyKinds";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
        ] ++ pkgs.lib.optional (flags.profunctors) (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"));
        buildable = true;
      };
    };
  }