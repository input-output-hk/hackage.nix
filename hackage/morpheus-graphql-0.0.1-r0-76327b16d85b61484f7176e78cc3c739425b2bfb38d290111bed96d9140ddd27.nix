{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "morpheus-graphql"; version = "0.0.1"; };
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
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      };
    }