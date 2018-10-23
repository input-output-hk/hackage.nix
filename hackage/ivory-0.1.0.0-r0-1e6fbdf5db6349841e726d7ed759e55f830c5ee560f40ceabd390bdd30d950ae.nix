{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ivory";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "trevor@galois.com";
      author = "Galois, Inc.";
      homepage = "http://smaccmpilot.org/languages/ivory-introduction.html";
      url = "";
      synopsis = "Safe embedded C programming.";
      description = "Using GHC type-system extensions, enforces safe low-level programming, while maintaining expressiveness.";
      buildType = "Simple";
    };
    components = {
      "ivory" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pretty)
          (hsPkgs.containers)
          (hsPkgs.monadLib)
          (hsPkgs.template-haskell)
          (hsPkgs.parsec)
          (hsPkgs.th-lift)
        ];
      };
    };
  }