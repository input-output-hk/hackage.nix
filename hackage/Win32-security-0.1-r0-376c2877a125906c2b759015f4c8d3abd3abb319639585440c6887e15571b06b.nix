{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-tests = false; };
    package = {
      specVersion = "1.16";
      identifier = { name = "Win32-security"; version = "0.1"; };
      license = "MIT";
      copyright = "Anton Dessiatov, 2015";
      maintainer = "anton.dessiatov@gmail.com";
      author = "Anton Dessiatov";
      homepage = "https://github.com/anton-dessiatov/Win32-security";
      url = "";
      synopsis = "Haskell bindings to a security-related functions of the Windows API";
      description = "This package contains bindings for security-related functions of the Windows API.\nIts main features are account name/SID lookup and editing securable objects access control lists.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
          (hsPkgs."Win32-errors" or ((hsPkgs.pkgs-errors).buildDepError "Win32-errors"))
          ];
        buildable = true;
        };
      exes = {
        "win32-security-sid-lookup" = {
          depends = (pkgs.lib).optionals (flags.build-tests) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."Win32-security" or ((hsPkgs.pkgs-errors).buildDepError "Win32-security"))
            ];
          buildable = if flags.build-tests then true else false;
          };
        "win32-security-file-security" = {
          depends = (pkgs.lib).optionals (flags.build-tests) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."Win32-security" or ((hsPkgs.pkgs-errors).buildDepError "Win32-security"))
            ];
          buildable = if flags.build-tests then true else false;
          };
        "win32-security-get-process-sid" = {
          depends = (pkgs.lib).optionals (flags.build-tests) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Win32-security" or ((hsPkgs.pkgs-errors).buildDepError "Win32-security"))
            ];
          buildable = if flags.build-tests then true else false;
          };
        };
      };
    }