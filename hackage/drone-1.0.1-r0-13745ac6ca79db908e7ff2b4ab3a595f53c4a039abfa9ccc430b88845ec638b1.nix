{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "drone"; version = "1.0.1"; };
      license = "MIT";
      copyright = "2018 MATSUBARA Nobutada";
      maintainer = "t12307043@gunma-u.ac.jp";
      author = "MATSUBARA Nobutada";
      homepage = "https://github.com/matsubara0507/drone-haskell#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/matsubara0507/drone-haskell#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.extensible)
          (hsPkgs.formatting)
          (hsPkgs.microlens)
          (hsPkgs.req)
          (hsPkgs.text)
          ];
        };
      tests = {
        "drone-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.drone)
            (hsPkgs.extensible)
            (hsPkgs.formatting)
            (hsPkgs.hspec)
            (hsPkgs.microlens)
            (hsPkgs.req)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }