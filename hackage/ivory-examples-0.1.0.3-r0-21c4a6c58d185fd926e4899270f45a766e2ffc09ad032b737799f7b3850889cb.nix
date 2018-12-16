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
      specVersion = "1.10";
      identifier = {
        name = "ivory-examples";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Galois, Inc.";
      maintainer = "trevor@galois.com, leepike@galois.com";
      author = "Galois, Inc";
      homepage = "http://smaccmpilot.org/languages/ivory-introduction.html";
      url = "";
      synopsis = "Ivory examples.";
      description = "Various examples demonstrating the use of Ivory.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ivory-c-clang-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.pretty)
            (hsPkgs.monadLib)
            (hsPkgs.template-haskell)
            (hsPkgs.ivory)
            (hsPkgs.ivory-opts)
            (hsPkgs.ivory-backend-c)
            (hsPkgs.ivory-stdlib)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }