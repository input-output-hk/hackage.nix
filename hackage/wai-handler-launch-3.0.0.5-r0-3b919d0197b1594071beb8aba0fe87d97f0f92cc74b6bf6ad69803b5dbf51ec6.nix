{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "wai-handler-launch"; version = "3.0.0.5"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "";
      url = "";
      synopsis = "Launch a web app in the default browser.";
      description = "API docs and the README are available at <http://www.stackage.org/package/wai-handler-launch>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."streaming-commons" or ((hsPkgs.pkgs-errors).buildDepError "streaming-commons"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"));
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."Shell32" or ((hsPkgs.pkgs-errors).sysDepError "Shell32"))
          (pkgs."msvcrt" or ((hsPkgs.pkgs-errors).sysDepError "msvcrt"))
          ];
        buildable = true;
        };
      };
    }