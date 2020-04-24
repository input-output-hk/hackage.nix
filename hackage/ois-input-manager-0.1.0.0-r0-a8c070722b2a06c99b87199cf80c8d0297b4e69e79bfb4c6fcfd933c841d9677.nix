{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "ois-input-manager"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013, Greg Horn";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "wrapper for OIS input manager for use with hogre";
      description = "This library is a wrapper around hand-written C++ code which manages an OIS::InputManager.\nIt enables you to use buffered or unbuffered mouse and keyboard input with a window created with hogre.\nSee the Haddock documentation for usage.\n\nThis is a preview release.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hogre" or ((hsPkgs.pkgs-errors).buildDepError "hogre"))
          ];
        libs = [ (pkgs."OIS" or ((hsPkgs.pkgs-errors).sysDepError "OIS")) ];
        buildable = true;
        };
      };
    }