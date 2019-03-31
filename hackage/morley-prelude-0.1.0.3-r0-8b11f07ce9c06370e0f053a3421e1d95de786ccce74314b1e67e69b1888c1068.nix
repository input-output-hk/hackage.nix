{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "morley-prelude"; version = "0.1.0.3"; };
      license = "AGPL-3.0-or-later";
      copyright = "2019 Tocqueville Group";
      maintainer = "john@camlcase.io";
      author = "camlCase, Serokell";
      homepage = "https://gitlab.com/camlcase-dev/morley";
      url = "";
      synopsis = "A custom prelude used in Morley";
      description = "A custom prelude used in Morley. It re-exports the Universum prelude\nand makes some tiny changes.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base-noprelude) (hsPkgs.universum) ]; };
      };
    }