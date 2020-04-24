{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pcf-font-embed"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Michael Swan";
      maintainer = "mswan@fastmail.com";
      author = "Michael Swan";
      homepage = "https://github.com/michael-swan/pcf-font-embed";
      url = "";
      synopsis = "Template Haskell for embedding text rendered using PCF fonts.";
      description = "pcf-font-embed is a library for rendering X11 PCF fonts at compile-time and statically embedding those images into user programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."pcf-font" or ((hsPkgs.pkgs-errors).buildDepError "pcf-font"))
          ];
        buildable = true;
        };
      };
    }