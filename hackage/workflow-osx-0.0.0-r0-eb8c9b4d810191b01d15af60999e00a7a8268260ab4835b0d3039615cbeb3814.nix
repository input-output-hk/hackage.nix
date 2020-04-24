{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "workflow-osx"; version = "0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2015 Spiros M. Boosalis";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "https://github.com/sboosali/workflow-osx#readme";
      url = "";
      synopsis = "a \"Desktop Workflow\" monad with Objective-C bindings";
      description = "a \\\"Desktop Workflow\\\" monad with Objective-C bindings\n\ne.g. press some keys, click the mouse, get/set the clipboard\n\nsee @Workflow.OSX@ for several examples\n\n(if the build fails, see the <https://github.com/sboosali/workflow-osx#the-build README>)\n\n(this package is on hackage for convenience, but it's still a prerelease)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."bv" or ((hsPkgs.pkgs-errors).buildDepError "bv"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        frameworks = [
          (pkgs."Cocoa" or ((hsPkgs.pkgs-errors).sysDepError "Cocoa"))
          ];
        buildable = if !system.isOsx then false else true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."workflow-osx" or ((hsPkgs.pkgs-errors).buildDepError "workflow-osx"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }