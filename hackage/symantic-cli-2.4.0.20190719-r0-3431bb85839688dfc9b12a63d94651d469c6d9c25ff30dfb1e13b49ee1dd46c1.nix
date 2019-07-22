{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "symantic-cli"; version = "2.4.0.20190719"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+symantic@autogeree.net>";
      author = "Julien Moutinho <julm+symantic@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "Symantics for parsing and documenting a CLI";
      description = "An extensible, typed and embedded Domain-Specific Language (DSL)\nto build Command Line Interface (CLI)\nusing a write-an-API-then-derive-code-from-it approach.\nThe derivations currently implemented are for parsing arguments or printing help.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.megaparsec)
          (hsPkgs.symantic-document)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        };
      };
    }