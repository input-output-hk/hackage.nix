{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ocaml-export"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Plow Technologies";
      maintainer = "james.haver@plowtech.net";
      author = "James M.C. Haver II";
      homepage = "https://github.com/plow-technologies/ocaml-export#readme";
      url = "";
      synopsis = "Convert Haskell types in OCaml types";
      description = "README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.file-embed)
          (hsPkgs.filepath)
          (hsPkgs.formatting)
          (hsPkgs.hspec-golden-aeson)
          (hsPkgs.mtl)
          (hsPkgs.quickcheck-arbitrary-adt)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.typelits-witnesses)
          (hsPkgs.wl-pprint-text)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.constraints)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.hspec-golden-aeson)
            (hsPkgs.ocaml-export)
            (hsPkgs.process)
            (hsPkgs.quickcheck-arbitrary-adt)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.typelits-witnesses)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }