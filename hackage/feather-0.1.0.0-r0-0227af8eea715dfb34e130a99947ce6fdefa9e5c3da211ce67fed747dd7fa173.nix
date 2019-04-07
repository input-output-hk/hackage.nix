{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "feather"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Scott Sadler";
      maintainer = "scott@scottsadler.de";
      author = "Scott Sadler";
      homepage = "https://github.com/libscott/feather#readme";
      url = "";
      synopsis = "";
      description = "A minimalistic and performant events dispatcher.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.microlens-platform)
          (hsPkgs.mtl)
          ];
        };
      tests = {
        "feather-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.feather)
            (hsPkgs.microlens-platform)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }