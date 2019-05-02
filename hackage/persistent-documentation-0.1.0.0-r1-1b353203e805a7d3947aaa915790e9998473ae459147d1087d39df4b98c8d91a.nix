{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "persistent-documentation"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2019 Lumi";
      maintainer = "parsonsmatt@gmail.com";
      author = "parsonsmatt";
      homepage = "";
      url = "";
      synopsis = "Documentation DSL for persistent entities";
      description = "A convenient DSL that allows you to attach documentation to persistent database entities";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.persistent)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.persistent)
            (hsPkgs.persistent-documentation)
            (hsPkgs.persistent-template)
            (hsPkgs.text)
            ];
          };
        };
      };
    }