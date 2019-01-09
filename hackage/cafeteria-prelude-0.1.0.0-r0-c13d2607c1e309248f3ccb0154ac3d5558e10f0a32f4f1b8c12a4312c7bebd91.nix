{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cafeteria-prelude"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "scott.fleischman@logos.com";
      author = "Scott Fleischman";
      homepage = "https://github.com/Scott-Fleischman/cafeteria-prelude";
      url = "";
      synopsis = "Prelude subsets—take only what you want!";
      description = "This package contains many subsets of the Prelude allowing you to take only what you need.\n\nModules named Prelude.Source.* are organized by the location of the source code.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }