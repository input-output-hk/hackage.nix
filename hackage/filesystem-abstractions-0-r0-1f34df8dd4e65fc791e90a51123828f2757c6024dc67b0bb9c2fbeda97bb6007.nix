{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "filesystem-abstractions"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018 davean";
      maintainer = "oss@xkcd.com";
      author = "davean";
      homepage = "https://oss.xkcd.com/";
      url = "";
      synopsis = "A shared set of abstractions and types for representing filessytem data.";
      description = "A shared set of abstractions and types for representing filessytem data, and functions to work with them.\nFocused on a correct representation of important aspects of specific views of filesystems and type safety.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."list-tries" or ((hsPkgs.pkgs-errors).buildDepError "list-tries"))
          (hsPkgs."posix-paths" or ((hsPkgs.pkgs-errors).buildDepError "posix-paths"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          ];
        buildable = true;
        };
      };
    }