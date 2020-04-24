{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { engine = true; runtime = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "matlab"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Sherman <benmsherman@gmail.com>";
      author = "Dylan Simon, Ben Sherman";
      homepage = "";
      url = "";
      synopsis = "Matlab bindings and interface";
      description = "This package aims to provide a comprehensive interface to the\nMathWorks MATLAB(R) libraries and native data structures, including\ncomplete matrix access, MAT-format files, linking and execution of\nruntime libraries and engine.  Requires MATLAB for full functionality\nor an installed Matlab Component Runtime (MCR). This has been tested\nwith MATLAB R2014a and might work with others.\n\n[/Installation/]\nYou will probably need add some arguments that point Cabal to your MATLAB\ninstallation. For example, on a Linux system, it may look like this:\n\n> cabal install --extra-lib-dirs=\"/usr/local/MATLAB/R2014a/bin/glnxa64/\" --extra-include-dirs=\"/usr/local/MATLAB/R2014a/extern/include/\"";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          ] ++ (pkgs.lib).optional (flags.runtime) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"));
        libs = [
          (pkgs."mx" or ((hsPkgs.pkgs-errors).sysDepError "mx"))
          (pkgs."mat" or ((hsPkgs.pkgs-errors).sysDepError "mat"))
          ] ++ (pkgs.lib).optional (flags.engine) (pkgs."eng" or ((hsPkgs.pkgs-errors).sysDepError "eng"));
        build-tools = (pkgs.lib).optional (flags.runtime) (hsPkgs.buildPackages.mcc or (pkgs.buildPackages.mcc or ((hsPkgs.pkgs-errors).buildToolDepError "mcc")));
        buildable = true;
        };
      };
    }