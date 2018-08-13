{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      usepkgconfig = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hydra-hs";
        version = "1.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "github@dustlab.com";
      author = "Marcel Ruegenberg";
      homepage = "https://github.com/mruegenberg/hydra-hs";
      url = "";
      synopsis = "Haskell binding to the Sixense SDK for the Razer Hydra";
      description = "Bindings to the Sixense SDK for the Razer Hydra.\nTo get started, get the SDK from Sixense (http://sixense.com/developers), install it, then install hydra.hs.\nThe install script that comes with the SDK might not always work.\nTo build hydra-hs, you need both sixense.h and libsixense.dylib in a location where they can be found (such as /usr/local/include and /usr/local/lib).";
      buildType = "Simple";
    };
    components = {
      "hydra-hs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hmatrix)
        ];
        libs = if !system.isX86_64
          then pkgs.lib.optional (!_flags.usepkgconfig) (pkgs.sixense)
          else pkgs.lib.optional (!_flags.usepkgconfig) (pkgs.sixense_x64);
        pkgconfig = if !system.isX86_64
          then pkgs.lib.optional (_flags.usepkgconfig) (pkgconfPkgs.libsixense)
          else pkgs.lib.optional (_flags.usepkgconfig) (pkgconfPkgs.libsixense_x64);
      };
      tests = {
        "hydra-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hydra-hs)
          ];
        };
      };
    };
  }