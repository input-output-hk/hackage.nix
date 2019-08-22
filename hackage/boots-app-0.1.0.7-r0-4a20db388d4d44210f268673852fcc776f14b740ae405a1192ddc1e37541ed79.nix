{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "boots-app"; version = "0.1.0.7"; };
      license = "MIT";
      copyright = "2019 Daniel YU";
      maintainer = "leptonyu@gmail.com";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/boots#readme";
      url = "";
      synopsis = "Startup factories using IoC monad";
      description = "Provide basic factories base on boots.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.boots)
          (hsPkgs.data-default)
          (hsPkgs.exceptions)
          (hsPkgs.fast-logger)
          (hsPkgs.menshen)
          (hsPkgs.microlens)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.salak)
          (hsPkgs.salak-yaml)
          (hsPkgs.splitmix)
          (hsPkgs.text)
          (hsPkgs.unliftio-core)
          (hsPkgs.vault)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.boots)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.fast-logger)
            (hsPkgs.hspec)
            (hsPkgs.menshen)
            (hsPkgs.microlens)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.salak)
            (hsPkgs.salak-yaml)
            (hsPkgs.splitmix)
            (hsPkgs.text)
            (hsPkgs.unliftio-core)
            (hsPkgs.vault)
            ];
          };
        };
      };
    }