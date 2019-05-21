{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "kerry"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019 Nick Hibberd";
      maintainer = "Nick Hibberd <nhibberd@gmail.com>";
      author = "Nick Hibberd <nhibberd@gmail.com>";
      homepage = "https://github.com/nhibberd/kerry#readme";
      url = "";
      synopsis = "Manage and abstract your packer configurations.";
      description = "Kerry is a library for representing and rendering\n<https://www.packer.io/ packer> definitions.\n\nTo get started quickly, see the <https://github.com/nhibberd/kerry/blob/master/src/Kerry/Example.hs example>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.errors)
          (hsPkgs.mmorph)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-bifunctors)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.kerry)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.mmorph)
            (hsPkgs.mtl)
            (hsPkgs.hedgehog)
            (hsPkgs.hedgehog-corpus)
            (hsPkgs.process)
            (hsPkgs.resourcet)
            (hsPkgs.temporary-resourcet)
            (hsPkgs.text)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }