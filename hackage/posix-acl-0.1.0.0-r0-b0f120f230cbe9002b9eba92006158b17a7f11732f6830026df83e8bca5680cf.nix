{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "posix-acl"; version = "0.1.0.0"; };
      license = "LGPL-2.1-only";
      copyright = "Copyright © 2013 Nicola Squartini";
      maintainer = "Nicola Squartini <tensor5@gmail.com>";
      author = "Nicola Squartini";
      homepage = "";
      url = "";
      synopsis = "Support for Posix ACL";
      description = "Support for POSIX.1e /Access Control Lists/ (ACL), defined in\nsection 23 of the draft standard IEEE Std 1003.1e.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.containers) ];
        libs = [ (pkgs."acl") ];
        };
      };
    }