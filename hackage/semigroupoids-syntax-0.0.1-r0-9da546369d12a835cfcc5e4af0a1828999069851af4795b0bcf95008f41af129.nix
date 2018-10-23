{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      small_base = true;
      containers = true;
      contravariant = true;
      distributive = true;
      comonad = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "semigroupoids-syntax";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 NICTA Limited";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
      homepage = "https://github.com/NICTA/semigroupoids-syntax";
      url = "";
      synopsis = "RebindableSyntax using the semigroupoids package";
      description = "<<http://i.imgur.com/Ns5hntl.jpg>>\n\nRebindableSyntax using the semigroupoids package";
      buildType = "Custom";
    };
    components = {
      "semigroupoids-syntax" = {
        depends  = ((([
          (hsPkgs.base)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.semigroupoids)
        ] ++ pkgs.lib.optional (flags.containers) (hsPkgs.containers)) ++ pkgs.lib.optional (flags.contravariant) (hsPkgs.contravariant)) ++ pkgs.lib.optional (flags.distributive) (hsPkgs.distributive)) ++ pkgs.lib.optional (flags.comonad) (hsPkgs.comonad);
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }