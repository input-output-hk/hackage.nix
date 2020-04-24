{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "proto-lens-protobuf-types"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "proto-lens@googlegroups.com";
      author = "Judah Jacobson";
      homepage = "https://github.com/google/proto-lens#readme";
      url = "";
      synopsis = "Basic protocol buffer message types.";
      description = "This package provides bindings standard protocol message types, for use with the proto-lens library.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.proto-lens-setup or (pkgs.buildPackages.proto-lens-setup or ((hsPkgs.pkgs-errors).buildToolDepError "proto-lens-setup")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens-labels" or ((hsPkgs.pkgs-errors).buildDepError "lens-labels"))
          (hsPkgs."proto-lens" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens"))
          (hsPkgs."proto-lens-runtime" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens-runtime"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }