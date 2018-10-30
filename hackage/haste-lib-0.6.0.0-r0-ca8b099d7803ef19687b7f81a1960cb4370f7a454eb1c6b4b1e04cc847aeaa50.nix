{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { haste = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haste-lib";
        version = "0.6.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad <anton@ekblad.cc>";
      homepage = "http://github.com/valderman/haste-compiler";
      url = "";
      synopsis = "Base libraries for haste-compiler.";
      description = "Base libraries for haste-compiler. Only useful for web development, with Haste or vanilla GHC + haste-app.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.integer-gmp)
          (hsPkgs.transformers)
          (hsPkgs.monads-tf)
          (hsPkgs.ghc-prim)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.haste-prim)
          (hsPkgs.time)
        ] ++ (if flags.haste
          then [
            (hsPkgs.array)
            (hsPkgs.hashable)
          ]
          else [
            (hsPkgs.array)
            (hsPkgs.random)
            (hsPkgs.binary)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.utf8-string)
          ]);
      };
    };
  }