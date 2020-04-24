{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "xine"; version = "0.0.0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "Joachim Fasting 2010";
      maintainer = "Joachim Fasting <joachim.fasting@gmail.com>";
      author = "Joachim Fasting";
      homepage = "http://github.com/joachifm/hxine";
      url = "";
      synopsis = "Bindings to xine-lib";
      description = "A Haskell FFI binding to xine-lib, a multimedia playback engine.\n\nSee <http://xine-project.org> for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        libs = [ (pkgs."xine" or ((hsPkgs.pkgs-errors).sysDepError "xine")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }