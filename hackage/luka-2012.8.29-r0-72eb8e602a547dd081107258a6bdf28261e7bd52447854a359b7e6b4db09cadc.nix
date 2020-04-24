{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "luka"; version = "2012.8.29"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/luka";
      url = "";
      synopsis = "Simple ObjectiveC runtime binding";
      description = "Simple ObjectiveC runtime binding";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."air" or ((hsPkgs.pkgs-errors).buildDepError "air"))
          (hsPkgs."libffi" or ((hsPkgs.pkgs-errors).buildDepError "libffi"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = [ (pkgs."objc" or ((hsPkgs.pkgs-errors).sysDepError "objc")) ];
        buildable = true;
        };
      };
    }