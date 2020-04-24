{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "miss-porcelain"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015-2018 Alec Heller & davean";
      maintainer = "oss@xkcd.com";
      author = "Alec Heller &  davean";
      homepage = "https://oss.xkcd.com/";
      url = "";
      synopsis = "Useability extras built on top of miss.";
      description = "This package builds on 'miss', providing convinient interfaces for working with git repositories.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filesystem-abstractions" or ((hsPkgs.pkgs-errors).buildDepError "filesystem-abstractions"))
          (hsPkgs."list-tries" or ((hsPkgs.pkgs-errors).buildDepError "list-tries"))
          (hsPkgs."miss" or ((hsPkgs.pkgs-errors).buildDepError "miss"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."posix-paths" or ((hsPkgs.pkgs-errors).buildDepError "posix-paths"))
          ];
        buildable = true;
        };
      };
    }