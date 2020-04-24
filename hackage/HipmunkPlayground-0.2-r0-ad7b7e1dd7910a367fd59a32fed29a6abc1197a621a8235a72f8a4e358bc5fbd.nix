{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "HipmunkPlayground"; version = "0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2008 Felipe A. Lessa";
      maintainer = "Felipe A. Lessa <felipe.lessa@gmail.com>";
      author = "Felipe A. Lessa <felipe.lessa@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A playground for testing Hipmunk.";
      description = "This is a simple OpenGL program that allows you to see\nsome of Hipmunk's functions in action.\n\nLicensed under the MIT license (like Hipmunk itself).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "HipmunkPlayground" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Hipmunk" or ((hsPkgs.pkgs-errors).buildDepError "Hipmunk"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."GLFW" or ((hsPkgs.pkgs-errors).buildDepError "GLFW"))
            ] ++ (pkgs.lib).optional (flags.small_base) (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"));
          buildable = true;
          };
        };
      };
    }