{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "XAttr"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "tensor5@gmail.com";
      author = "Nicola Squartini <tensor5@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Read, set, and list extended attributes";
      description = "XAttr provides bindings to the glibc function for reading and manipulating extended attributes (setxattr, getxattr, listxattr, ...).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        buildable = true;
        };
      };
    }