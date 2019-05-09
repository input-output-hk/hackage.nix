{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "constraints-extras"; version = "0.2.3.5"; };
      license = "BSD-3-Clause";
      copyright = "Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Cale Gibbard, Ali Abrar";
      homepage = "";
      url = "";
      synopsis = "Utility package for constraints";
      description = "Convenience functions and TH for working with constraints. See <https://github.com/obsidiansystems/constraints-extras/blob/develop/README.md README.md> for example usage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.template-haskell)
          ];
        };
      exes = {
        "readme" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.constraints)
            (hsPkgs.constraints-extras)
            ];
          build-tools = [ ((hsPkgs.buildPackages).markdown-unlit) ];
          };
        };
      };
    }