{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "workflow-osx";
        version = "0.0.0";
      };
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
          (hsPkgs.http-types)
          (hsPkgs.bv)
          (hsPkgs.free)
          (hsPkgs.filepath)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.base)
        ];
        frameworks = [ (pkgs."Cocoa") ];
      };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.workflow-osx)
            (hsPkgs.base)
          ];
        };
      };
    };
  }