{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ivory";
        version = "0.1.0.3";
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
          (hsPkgs.base-compat)
          (hsPkgs.pretty)
          (hsPkgs.containers)
          (hsPkgs.monadLib)
          (hsPkgs.template-haskell)
          (hsPkgs.filepath)
          (hsPkgs.text)
          (hsPkgs.dlist)
          (hsPkgs.th-lift)
          (hsPkgs.array)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
          (hsPkgs.buildPackages.happy)
        ];
      };
    };
  }