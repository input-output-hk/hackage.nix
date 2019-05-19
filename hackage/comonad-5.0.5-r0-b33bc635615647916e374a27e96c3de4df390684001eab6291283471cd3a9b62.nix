{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test-doctests = true; containers = true; distributive = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "comonad"; version = "5.0.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2014 Edward A. Kmett,\nCopyright (C) 2004-2008 Dave Menendez";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/comonad/";
      url = "";
      synopsis = "Comonads";
      description = "Comonads.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest))
        ];
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs.base)
          (hsPkgs.tagged)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups)) ++ (pkgs.lib).optional (flags.containers) (hsPkgs.containers)) ++ (pkgs.lib).optional (flags.distributive) (hsPkgs.distributive);
        };
      tests = {
        "doctests" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doctests)) [
            (hsPkgs.base)
            (hsPkgs.comonad)
            (hsPkgs.doctest)
            ];
          };
        };
      };
    }