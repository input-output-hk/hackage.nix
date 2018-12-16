{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "hpack-dhall";
        version = "0.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "© 2018 Phil de Joux, © 2018 Block Scope Limited";
      maintainer = "Phil de Joux <phil.dejoux@blockscope.com>";
      author = "";
      homepage = "https://github.com/blockscope/hpack-dhall#readme";
      url = "";
      synopsis = "hpack's dhalling";
      description = "Work with hpack's top-level\n<https://github.com/sol/hpack#top-level-fields fields> in a Dhall\nrecord with the following executables;\n\n* with @dhall-hpack-cabal@ write the @.cabal@ for a @.dhall@ package description.\n* with @dhall-hpack-dhall@ show the package description expression, with imports resolved.\n* with @dhall-hpack-json@ show the package description as JSON.\n* with @dhall-hpack-yaml@ show the package description as YAML.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.dhall)
          (hsPkgs.dhall-json)
          (hsPkgs.filepath)
          (hsPkgs.hpack)
          (hsPkgs.megaparsec)
          (hsPkgs.microlens)
          (hsPkgs.prettyprinter)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "dhall-hpack-cabal" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.dhall)
            (hsPkgs.dhall-json)
            (hsPkgs.filepath)
            (hsPkgs.hpack)
            (hsPkgs.hpack-dhall)
            (hsPkgs.megaparsec)
            (hsPkgs.microlens)
            (hsPkgs.optparse-applicative)
            (hsPkgs.prettyprinter)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.yaml)
          ];
        };
        "dhall-hpack-dhall" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.dhall)
            (hsPkgs.dhall-json)
            (hsPkgs.filepath)
            (hsPkgs.hpack)
            (hsPkgs.hpack-dhall)
            (hsPkgs.megaparsec)
            (hsPkgs.microlens)
            (hsPkgs.optparse-applicative)
            (hsPkgs.prettyprinter)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.yaml)
          ];
        };
        "dhall-hpack-json" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.dhall)
            (hsPkgs.dhall-json)
            (hsPkgs.filepath)
            (hsPkgs.hpack)
            (hsPkgs.hpack-dhall)
            (hsPkgs.megaparsec)
            (hsPkgs.microlens)
            (hsPkgs.optparse-applicative)
            (hsPkgs.prettyprinter)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.yaml)
          ];
        };
        "dhall-hpack-yaml" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.dhall)
            (hsPkgs.dhall-json)
            (hsPkgs.filepath)
            (hsPkgs.hpack)
            (hsPkgs.hpack-dhall)
            (hsPkgs.megaparsec)
            (hsPkgs.microlens)
            (hsPkgs.optparse-applicative)
            (hsPkgs.prettyprinter)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.yaml)
          ];
        };
      };
      tests = {
        "golden" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.Diff)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.dhall)
            (hsPkgs.dhall-json)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hpack)
            (hsPkgs.megaparsec)
            (hsPkgs.microlens)
            (hsPkgs.prettyprinter)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }