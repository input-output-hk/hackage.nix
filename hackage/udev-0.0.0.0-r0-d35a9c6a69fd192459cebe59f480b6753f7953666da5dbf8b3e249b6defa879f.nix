{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "udev"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013, Sam Truzjan";
      maintainer = "pxqr.sta@gmail.com";
      author = "Sam Truzjan";
      homepage = "https://github.com/pxqr/udev";
      url = "";
      synopsis = "libudev bindings";
      description = "libudev bindings";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        pkgconfig = [
          (pkgconfPkgs."libudev" or ((hsPkgs.pkgs-errors).pkgConfDepError "libudev"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "hidraw" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."udev" or ((hsPkgs.pkgs-errors).buildDepError "udev"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "monitor" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."udev" or ((hsPkgs.pkgs-errors).buildDepError "udev"))
            (hsPkgs."select" or ((hsPkgs.pkgs-errors).buildDepError "select"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      };
    }