{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hmatrix"; version = "0.16.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alberto Ruiz";
      author = "Alberto Ruiz";
      homepage = "https://github.com/albertoruiz/hmatrix";
      url = "";
      synopsis = "Numeric Linear Algebra";
      description = "Linear algebra based on BLAS and LAPACK.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.array)
          (hsPkgs.deepseq)
          (hsPkgs.random)
          (hsPkgs.split)
          (hsPkgs.bytestring)
          (hsPkgs.storable-complex)
          (hsPkgs.vector)
          ];
        libs = ([
          (pkgs."blas")
          (pkgs."lapack")
          ] ++ (pkgs.lib).optionals (system.isFreebsd) [
          (pkgs."blas")
          (pkgs."lapack")
          ]) ++ (pkgs.lib).optionals (system.isWindows) [
          (pkgs."blas")
          (pkgs."lapack")
          ];
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate");
        };
      };
    }