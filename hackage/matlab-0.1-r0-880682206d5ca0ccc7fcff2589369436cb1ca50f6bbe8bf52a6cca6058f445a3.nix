{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { engine = true; runtime = true; mcr = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "matlab"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dylan@dylex.net";
      author = "Dylan Simon";
      homepage = "";
      url = "";
      synopsis = "Matlab bindings and interface";
      description = "This package aims to provide a comprehensive interface to the MathWorks MATLAB(R) libraries and native data structures, including complete matrix access, MAT-format files, linking and execution of runtime libraries and engine.  Requires MATLAB for full functionality or an installed Matlab Component Runtime (MCR).  This has been tested with MATLAB 7.5-7.7 and might work with others.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.array)
          (hsPkgs.filepath)
          (hsPkgs.Cabal)
          ];
        libs = [
          (pkgs."mx")
          ] ++ (pkgs.lib).optional (flags.engine) (pkgs."eng");
        };
      };
    }