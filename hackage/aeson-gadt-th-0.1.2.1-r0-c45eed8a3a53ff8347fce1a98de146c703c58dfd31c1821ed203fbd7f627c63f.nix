{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "aeson-gadt-th"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems LLC";
      homepage = "";
      url = "";
      synopsis = "Derivation of Aeson instances for GADTs";
      description = "Template Haskell for generating ToJSON and FromJSON instances for GADTs. See <https://github.com/obsidiansystems/aeson-gadt-th/blob/master/README.md README.md> for examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.dependent-sum)
          (hsPkgs.transformers)
          (hsPkgs.template-haskell)
          ];
        };
      exes = {
        "readme" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.dependent-sum)
            (hsPkgs.aeson-gadt-th)
            ];
          build-tools = [ ((hsPkgs.buildPackages).markdown-unlit) ];
          };
        };
      };
    }