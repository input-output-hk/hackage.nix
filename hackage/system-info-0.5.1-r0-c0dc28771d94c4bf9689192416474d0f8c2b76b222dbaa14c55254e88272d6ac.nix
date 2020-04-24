{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "system-info"; version = "0.5.1"; };
      license = "MIT";
      copyright = "2020 (c) ChaosGroup";
      maintainer = "daniel.taskoff@gmail.com";
      author = "Daniel Taskoff";
      homepage = "https://github.com/ChaosGroup/system-info#readme";
      url = "";
      synopsis = "Get the name of the operating system";
      description = "Please see the README on Github at <https://github.com/ChaosGroup/system-info#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"));
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."ole32" or ((hsPkgs.pkgs-errors).sysDepError "ole32"))
          (pkgs."oleaut32" or ((hsPkgs.pkgs-errors).sysDepError "oleaut32"))
          (pkgs."wbemuuid" or ((hsPkgs.pkgs-errors).sysDepError "wbemuuid"))
          ];
        buildable = true;
        };
      };
    }