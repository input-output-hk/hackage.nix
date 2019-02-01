{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hedn"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Alexander Bondarenko";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "";
      url = "";
      synopsis = "EDN parsing and encoding";
      description = "A EDN parsing and encoding library.\n\nBased on \"specs\" published at <https://github.com/edn-format/edn>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.deriving-compat)
          (hsPkgs.megaparsec)
          (hsPkgs.parser-combinators)
          (hsPkgs.prettyprinter)
          (hsPkgs.scientific)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.uuid)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "edn-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hedgehog)
            (hsPkgs.hedn)
            (hsPkgs.megaparsec)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.uuid)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }