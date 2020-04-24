{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { executable = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "udbus-model"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-udbus";
      url = "";
      synopsis = "Model API for udbus introspection and definitions";
      description = "Model API for udbus introspection and definitions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          (hsPkgs."udbus" or ((hsPkgs.pkgs-errors).buildDepError "udbus"))
          ];
        buildable = true;
        };
      exes = {
        "dbus-model-parse" = {
          depends = (pkgs.lib).optionals (flags.executable) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."groom" or ((hsPkgs.pkgs-errors).buildDepError "groom"))
            (hsPkgs."udbus" or ((hsPkgs.pkgs-errors).buildDepError "udbus"))
            (hsPkgs."udbus-model" or ((hsPkgs.pkgs-errors).buildDepError "udbus-model"))
            ];
          buildable = if flags.executable then true else false;
          };
        };
      };
    }