{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "aeson-typescript"; version = "0.1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 CodeDown";
      maintainer = "tom@codedown.io";
      author = "Tom McLaughlin";
      homepage = "https://github.com/codedownio/aeson-typescript#readme";
      url = "";
      synopsis = "Generate TypeScript definition files from your ADTs";
      description = "Please see the README on Github at <https://github.com/codedownio/aeson-typescript#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.interpolate)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.th-abstraction)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "aeson-typescript-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-typescript)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.interpolate)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.template-haskell)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.th-abstraction)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }