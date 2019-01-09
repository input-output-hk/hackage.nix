{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "diagrams-gtk"; version = "1.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "John Lato";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "John Lato";
      homepage = "http://projects.haskell.org/diagrams/";
      url = "";
      synopsis = "Backend for rendering diagrams directly to GTK windows";
      description = "An optional add-on to the diagrams-cairo package\nwhich allows rendering diagrams directly to GTK windows.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-cairo)
          (hsPkgs.gtk)
          (hsPkgs.cairo)
          ];
        };
      };
    }