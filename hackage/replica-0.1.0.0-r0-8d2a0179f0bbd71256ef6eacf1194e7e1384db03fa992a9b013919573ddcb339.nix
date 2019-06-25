{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "replica"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 (c) Philip Kamenarsky";
      maintainer = "p.kamenarsky@gmail.com";
      author = "Philip Kamenarsky";
      homepage = "https://github.com/https://github.com/pkamenarsky/replica#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/githubuser/replica#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.Diff)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.file-embed)
          (hsPkgs.http-types)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.wai-websockets)
          (hsPkgs.websockets)
          ];
        };
      tests = {
        "replica-test" = {
          depends = [
            (hsPkgs.Diff)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.file-embed)
            (hsPkgs.http-types)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.replica)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.wai-websockets)
            (hsPkgs.websockets)
            ];
          };
        };
      };
    }