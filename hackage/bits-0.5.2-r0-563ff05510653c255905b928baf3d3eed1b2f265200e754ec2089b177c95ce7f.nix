{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test-doctests = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "bits"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/bits";
      url = "";
      synopsis = "Various bit twiddling and bitwise serialization primitives";
      description = "Various bit twiddling and bitwise serialization primitives.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytes)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.fail);
        };
      tests = {
        "doctests" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doctests)) [
            (hsPkgs.base)
            (hsPkgs.bits)
            (hsPkgs.doctest)
            ];
          };
        };
      };
    }