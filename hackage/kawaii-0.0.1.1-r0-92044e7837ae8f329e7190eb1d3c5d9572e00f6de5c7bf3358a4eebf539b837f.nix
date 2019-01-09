{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { hakyll = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "kawaii"; version = "0.0.1.1"; };
      license = "LicenseRef-Apache";
      copyright = "";
      maintainer = "Eduardo Trujillo <ed@chromabits.com>";
      author = "Eduardo Trujillo <ed@chromabits.com>";
      homepage = "https://phabricator.chromabits.com/diffusion/KWAI/";
      url = "";
      synopsis = "Utilities for serving static sites and blogs with Wai/Warp";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.safe)
          (hsPkgs.text)
          (hsPkgs.lens)
          (hsPkgs.bytestring)
          (hsPkgs.optparse-applicative)
          (hsPkgs.warp)
          (hsPkgs.warp-tls)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-app-static)
          (hsPkgs.streaming-commons)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.lifted-base)
          (hsPkgs.mtl)
          (hsPkgs.monad-logger)
          (hsPkgs.monad-control)
          ] ++ (pkgs.lib).optional (flags.hakyll) (hsPkgs.hakyll);
        };
      tests = {
        "wai-static-extra-spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.safe)
            (hsPkgs.text)
            (hsPkgs.lens)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
            (hsPkgs.warp)
            (hsPkgs.warp-tls)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-app-static)
            (hsPkgs.streaming-commons)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.lifted-base)
            (hsPkgs.mtl)
            (hsPkgs.monad-logger)
            (hsPkgs.monad-control)
            (hsPkgs.kawaii)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ] ++ (pkgs.lib).optional (flags.hakyll) (hsPkgs.hakyll);
          };
        };
      };
    }