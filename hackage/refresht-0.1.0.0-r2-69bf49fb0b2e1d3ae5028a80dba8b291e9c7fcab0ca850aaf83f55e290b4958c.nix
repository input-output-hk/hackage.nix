{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "refresht"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 (c) Hiromi ISHII";
      maintainer = "konn.jinro _at_ gmail.com";
      author = "Hiromi ISHII";
      homepage = "https://github.com/konn/refresht#readme";
      url = "";
      synopsis = "Environment Monad with automatic resource refreshment";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.data-default)
          (hsPkgs.lens)
          (hsPkgs.exceptions)
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.refresht)
            (hsPkgs.mtl)
            (hsPkgs.data-default)
            (hsPkgs.lens)
            (hsPkgs.exceptions)
            ];
          };
        };
      };
    }