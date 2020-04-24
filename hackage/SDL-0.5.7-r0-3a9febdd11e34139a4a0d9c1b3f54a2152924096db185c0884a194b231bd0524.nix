{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "SDL"; version = "0.5.7"; };
      license = "BSD-3-Clause";
      copyright = "2004-2009, Lemmih";
      maintainer = "Lemmih (lemmih@gmail.com)";
      author = "Lemmih (lemmih@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Binding to libSDL";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = [ (pkgs."SDL" or ((hsPkgs.pkgs-errors).sysDepError "SDL")) ];
        frameworks = [
          (pkgs."AppKit" or ((hsPkgs.pkgs-errors).sysDepError "AppKit"))
          ];
        buildable = true;
        };
      };
    }