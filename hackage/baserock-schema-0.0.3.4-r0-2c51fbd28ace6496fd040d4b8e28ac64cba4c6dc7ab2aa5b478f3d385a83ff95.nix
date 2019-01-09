{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "baserock-schema"; version = "0.0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "2018 Daniel Firth";
      maintainer = "locallycompact@gmail.com";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Baserock Definitions Schema";
      description = "Baserock Definitions Schema - Parsers, Printers, Encoders, Decoders, ASTs, Graphs and Traversals";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.microlens-platform)
          (hsPkgs.rio)
          (hsPkgs.yaml-pretty-extras)
          ];
        };
      exes = {
        "baserock" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.baserock-schema)
            (hsPkgs.etc)
            (hsPkgs.gitlab-api)
            (hsPkgs.hashable)
            (hsPkgs.lens-aeson)
            (hsPkgs.microlens-platform)
            (hsPkgs.rio)
            (hsPkgs.yaml-pretty-extras)
            ];
          };
        };
      tests = {
        "earthquake-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.baserock-schema)
            (hsPkgs.hspec)
            (hsPkgs.microlens-platform)
            (hsPkgs.rio)
            (hsPkgs.yaml-pretty-extras)
            ];
          };
        };
      };
    }