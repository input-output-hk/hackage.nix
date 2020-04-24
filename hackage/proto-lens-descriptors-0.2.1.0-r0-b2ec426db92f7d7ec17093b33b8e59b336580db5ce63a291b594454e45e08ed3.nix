{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "proto-lens-descriptors"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "proto-lens@googlegroups.com";
      author = "Judah Jacobson";
      homepage = "";
      url = "";
      synopsis = "Protocol buffers for describing the definitions of messages.";
      description = "This package provides definitions for the 'proto-lens' package\nof message types which describe @.proto@ files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."lens-family" or ((hsPkgs.pkgs-errors).buildDepError "lens-family"))
          (hsPkgs."lens-labels" or ((hsPkgs.pkgs-errors).buildDepError "lens-labels"))
          (hsPkgs."proto-lens" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }