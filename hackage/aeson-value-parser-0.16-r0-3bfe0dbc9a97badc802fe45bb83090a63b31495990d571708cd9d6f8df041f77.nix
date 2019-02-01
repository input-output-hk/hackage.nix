{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "aeson-value-parser"; version = "0.16"; };
      license = "MIT";
      copyright = "(c) 2015, Sannsyn AS";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/sannsyn/aeson-value-parser";
      url = "";
      synopsis = "API for parsing \"aeson\" JSON tree into Haskell types";
      description = "A flexible parser DSL of JSON AST produced by the \\\"aeson\\\" library\nwith automated and highly detailed error reporting.\nProvides a featureful toolkit for parsing real-world documents with schemas\nof any complexity or ambiguity, which the \"FromJSON\" instances\nare simply not fit for.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
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