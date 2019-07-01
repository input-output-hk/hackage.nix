{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "morpheus-graphql"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Daviti Nalchevanidze";
      maintainer = "d.nalchevanidze@gmail.com";
      author = "Daviti Nalchevanidze";
      homepage = "https://github.com/nalchevanidze/morpheus-graphql#readme";
      url = "";
      synopsis = "Morpheus GraphQL";
      description = "Build GraphQL APIs with your favourite functional language!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid)
          (hsPkgs.vector)
          (hsPkgs.wai-websockets)
          (hsPkgs.websockets)
          ];
        };
      exes = {
        "api" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.megaparsec)
            (hsPkgs.morpheus-graphql)
            (hsPkgs.mtl)
            (hsPkgs.scientific)
            (hsPkgs.scotty)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.uuid)
            (hsPkgs.vector)
            (hsPkgs.wai)
            (hsPkgs.wai-websockets)
            (hsPkgs.warp)
            (hsPkgs.websockets)
            ];
          };
        };
      tests = {
        "morpheus-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.megaparsec)
            (hsPkgs.morpheus-graphql)
            (hsPkgs.mtl)
            (hsPkgs.scientific)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.uuid)
            (hsPkgs.vector)
            (hsPkgs.wai-websockets)
            (hsPkgs.websockets)
            ];
          };
        };
      };
    }