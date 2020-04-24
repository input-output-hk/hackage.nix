{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fake-type"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Artyom <yom@artyom.me>";
      author = "Artyom";
      homepage = "http://github.com/aelve/fake-type";
      url = "";
      synopsis = "A crossplatform library to simulate keyboard input";
      description = "A crossplatform library to simulate keyboard input (so far it works only on Linux, but I'll add Windows and OS X soon).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-prelude" or ((hsPkgs.pkgs-errors).buildDepError "base-prelude"))
          (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
          ];
        libs = [ (pkgs."Xtst" or ((hsPkgs.pkgs-errors).sysDepError "Xtst")) ];
        buildable = true;
        };
      };
    }