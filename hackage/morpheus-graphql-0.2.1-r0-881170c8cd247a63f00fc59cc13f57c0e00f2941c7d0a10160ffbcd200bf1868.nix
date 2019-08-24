{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "morpheus-graphql"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Daviti Nalchevanidze";
      maintainer = "d.nalchevanidze@gmail.com";
      author = "Daviti Nalchevanidze";
      homepage = "https://morpheusgraphql.com";
      url = "";
      synopsis = "Morpheus GraphQL";
      description = "Build GraphQL APIs with your favourite functional language!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.scientific)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
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
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.megaparsec)
            (hsPkgs.morpheus-graphql)
            (hsPkgs.mtl)
            (hsPkgs.scientific)
            (hsPkgs.scotty)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.uuid)
            (hsPkgs.vector)
            (hsPkgs.wai)
            (hsPkgs.wai-websockets)
            (hsPkgs.warp)
            (hsPkgs.websockets)
            ];
          };
        "morpheus" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.lens)
            (hsPkgs.megaparsec)
            (hsPkgs.morpheus-graphql)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.scientific)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.uuid)
            (hsPkgs.vector)
            (hsPkgs.wai-websockets)
            (hsPkgs.websockets)
            ];
          };
        };
      tests = {
        "morpheus-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.megaparsec)
            (hsPkgs.morpheus-graphql)
            (hsPkgs.mtl)
            (hsPkgs.scientific)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.uuid)
            (hsPkgs.vector)
            (hsPkgs.wai-websockets)
            (hsPkgs.websockets)
            ];
          };
        };
      };
    }