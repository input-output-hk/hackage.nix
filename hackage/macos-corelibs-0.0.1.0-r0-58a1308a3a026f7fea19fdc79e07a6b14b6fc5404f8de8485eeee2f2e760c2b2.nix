{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "macos-corelibs"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Filippo Sestini";
      maintainer = "sestini.filippo@gmail.com";
      author = "Filippo Sestini";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to C-based Mac OS SDK frameworks";
      description = "Type-safe Haskell bindings to C-based frameworks of the Apple\nMac OS SDK, including CoreFoundation, CoreGraphics, and Carbon\nAccessibility APIs. Please see the README on Github for more\ninformation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."managed" or ((hsPkgs.pkgs-errors).buildDepError "managed"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          ];
        frameworks = [
          (pkgs."Carbon" or ((hsPkgs.pkgs-errors).sysDepError "Carbon"))
          (pkgs."Cocoa" or ((hsPkgs.pkgs-errors).sysDepError "Cocoa"))
          ];
        buildable = true;
        };
      };
    }