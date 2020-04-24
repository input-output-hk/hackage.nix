{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "system-info"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2016 ChaosGroup";
      maintainer = "daniel.taskoff@chaosgroup.com";
      author = "Daniel Taskoff";
      homepage = "https://github.com/ChaosGroup/system-info";
      url = "";
      synopsis = "Get information about CPUs, memory, etc.";
      description = "An OS independent Haskell library for getting information about CPUs, memory, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"));
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."ole32" or ((hsPkgs.pkgs-errors).sysDepError "ole32"))
          (pkgs."oleaut32" or ((hsPkgs.pkgs-errors).sysDepError "oleaut32"))
          (pkgs."wbemuuid" or ((hsPkgs.pkgs-errors).sysDepError "wbemuuid"))
          ];
        buildable = true;
        };
      tests = {
        "system-info-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."system-info" or ((hsPkgs.pkgs-errors).buildDepError "system-info"))
            ];
          buildable = true;
          };
        };
      };
    }