{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HaskellNN";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Kiet Lam <ktklam9@gmail.com>";
        author = "Kiet Lam";
        homepage = "";
        url = "";
        synopsis = "High Performance Neural Network in Haskell";
        description = "High Performance Neural Network in Haskell\n\nProvides fast training algorithms using\nhmatrix's bindings to GSL and custom bindings\nto the liblbfgs C-library\n\nSupported training algorithms: Gradient Descent, Conjugate Gradient, BFGS, LBFGS\n\n- Users should focus on \"AI.Model\" for most usages (classification / regression)\n\n- Other modules are provided for user expansion if needed\n\nGo to <https://github.com/ktklam9/HaskellNN> for examples and tests for usage";
        buildType = "Simple";
      };
      components = {
        HaskellNN = {
          depends  = [
            hsPkgs.base
            hsPkgs.hmatrix
            hsPkgs.random
          ];
        };
      };
    }