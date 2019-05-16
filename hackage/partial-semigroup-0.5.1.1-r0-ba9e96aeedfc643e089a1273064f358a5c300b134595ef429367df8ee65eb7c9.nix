{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      semigroup-in-base = true;
      enable-hedgehog = true;
      enable-doctest = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "partial-semigroup"; version = "0.5.1.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/partial-semigroup";
      url = "";
      synopsis = "A partial binary associative operator";
      description = "A partial semigroup is like a semigroup, but the operator\nis partial. We represent this in Haskell as a total function\n@(<>?) :: a -> a -> Maybe a@.\n\nThe\n<https://hackage.haskell.org/package/partial-semigroup-hedgehog partial-semigroup-hedgehog>\ncompanion package provides support for checking the partial\nsemigroup associativity axiom using the\n<https://hackage.haskell.org/package/hedgehog hedgehog>\npackage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ] ++ (if flags.semigroup-in-base
          then [ (hsPkgs.base) ]
          else [ (hsPkgs.semigroups) ]);
        };
      tests = {
        "docs" = {
          depends = ([
            (hsPkgs.base)
            ] ++ (pkgs.lib).optionals (flags.enable-doctest) [
            (hsPkgs.base)
            (hsPkgs.doctest)
            ]) ++ (if flags.semigroup-in-base
            then [ (hsPkgs.base) ]
            else [ (hsPkgs.semigroups) ]);
          };
        "examples" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.partial-semigroup)
            ] ++ (pkgs.lib).optional (flags.enable-hedgehog) (hsPkgs.hedgehog)) ++ (if flags.semigroup-in-base
            then [ (hsPkgs.base) ]
            else [ (hsPkgs.semigroups) ]);
          };
        "properties" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.partial-semigroup)
            ] ++ (pkgs.lib).optional (flags.enable-hedgehog) (hsPkgs.hedgehog)) ++ (if flags.semigroup-in-base
            then [ (hsPkgs.base) ]
            else [ (hsPkgs.semigroups) ]);
          };
        "generics" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.partial-semigroup)
            ] ++ (pkgs.lib).optional (flags.enable-hedgehog) (hsPkgs.hedgehog)) ++ (if flags.semigroup-in-base
            then [ (hsPkgs.base) ]
            else [ (hsPkgs.semigroups) ]);
          };
        };
      };
    }