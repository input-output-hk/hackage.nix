{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "heavy-log-shortcuts"; version = "1.0.0"; };
      license = "MIT";
      copyright = "2019 Jappie Klooster";
      maintainer = "jappieklooster@hotmail.com";
      author = "Jappie Klooster";
      homepage = "https://github.com/jappeace/template#readme";
      url = "";
      synopsis = "Simle api for heavy logger";
      description = "An alternative shortcut api for heavy-logger, removes vars functionality.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.fast-logger)
          (hsPkgs.heavy-logger)
          (hsPkgs.monad-control)
          (hsPkgs.text)
          (hsPkgs.text-format-heavy)
          ];
        };
      };
    }