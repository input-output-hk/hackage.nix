{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "boots"; version = "0"; };
      license = "MIT";
      copyright = "2019 Daniel YU";
      maintainer = "leptonyu@gmail.com";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/boots#readme";
      url = "";
      synopsis = "Boot application by using plugins.";
      description = "Boot application.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.exceptions)
          (hsPkgs.fast-logger)
          (hsPkgs.microlens)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.salak)
          (hsPkgs.salak-yaml)
          (hsPkgs.text)
          (hsPkgs.unliftio-core)
          ];
        };
      exes = {
        "boots-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.boots)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.fast-logger)
            (hsPkgs.microlens)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.salak)
            (hsPkgs.salak-yaml)
            (hsPkgs.text)
            (hsPkgs.unliftio-core)
            ];
          };
        };
      };
    }