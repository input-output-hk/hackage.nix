{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "follow"; version = "0.1.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "2018 Marc Busqué Pérez";
      maintainer = "marc@lamarciana.com";
      author = "Marc Busqué Pérez";
      homepage = "https://github.com/waiting-for-dev/follow#readme";
      url = "";
      synopsis = "Haskell library to follow content published on any subject.";
      description = "Please, see the README on GitHub at <https://github.com/waiting-for-dev/follow#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.HandsomeSoup)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.feed)
          (hsPkgs.hxt)
          (hsPkgs.req)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
          ];
        };
      exes = {
        "follow_pocket_auth" = {
          depends = [
            (hsPkgs.HandsomeSoup)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.feed)
            (hsPkgs.follow)
            (hsPkgs.hxt)
            (hsPkgs.req)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
            ];
          };
        };
      tests = {
        "follow-test" = {
          depends = [
            (hsPkgs.HandsomeSoup)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.feed)
            (hsPkgs.follow)
            (hsPkgs.hspec)
            (hsPkgs.hxt)
            (hsPkgs.req)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
            ];
          };
        };
      };
    }