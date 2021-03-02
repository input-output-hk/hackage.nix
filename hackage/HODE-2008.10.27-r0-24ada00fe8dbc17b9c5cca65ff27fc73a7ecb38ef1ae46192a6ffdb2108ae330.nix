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
      specVersion = "1.0";
      identifier = { name = "HODE"; version = "2008.10.27"; };
      license = "BSD-3-Clause";
      copyright = "2005-2008, Lemmih";
      maintainer = "Lemmih (lemmih@gmail.com)";
      author = "Lemmih (lemmih@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Binding to libODE";
      description = "ODE is an open source, high performance library for simulating rigid body dynamics.\nIt has advanced joint types and integrated collision detection with friction.\nODE is useful for simulating vehicles, objects in virtual reality environments\nand virtual creatures. It is currently used in many computer games, 3D authoring\ntools and simulation tools. See http://www.ode.org/";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        libs = [ (pkgs."ode" or (errorHandler.sysDepError "ode")) ];
        buildable = true;
        };
      };
    }