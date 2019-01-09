{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "waargonaut"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018 Commonwealth Scientific and Industrial Research Organisation (CSIRO)";
      maintainer = "oᴉ˙ldɟb@uɐǝs";
      author = "QFPL @ Data61";
      homepage = "https://github.com/qfpl/waargonaut";
      url = "";
      synopsis = "JSON wrangling";
      description = "Flexible, precise, and efficient JSON decoding/encoding library.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.parsers)
          (hsPkgs.digit)
          (hsPkgs.semigroups)
          (hsPkgs.scientific)
          (hsPkgs.distributive)
          (hsPkgs.nats)
          (hsPkgs.zippers)
          (hsPkgs.vector)
          (hsPkgs.errors)
          (hsPkgs.hoist-error)
          (hsPkgs.containers)
          (hsPkgs.witherable)
          (hsPkgs.generics-sop)
          (hsPkgs.mmorph)
          (hsPkgs.transformers)
          (hsPkgs.bifunctors)
          (hsPkgs.contravariant)
          (hsPkgs.wl-pprint-annotated)
          (hsPkgs.hw-json)
          (hsPkgs.hw-prim)
          (hsPkgs.hw-balancedparens)
          (hsPkgs.hw-rankselect)
          (hsPkgs.hw-bits)
          (hsPkgs.tagged)
          (hsPkgs.semigroupoids)
          (hsPkgs.natural)
          ];
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hedgehog)
            (hsPkgs.text)
            (hsPkgs.digit)
            (hsPkgs.attoparsec)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.template-haskell)
            (hsPkgs.waargonaut)
            ];
          };
        "waarg-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-expected-failure)
            (hsPkgs.hedgehog)
            (hsPkgs.hedgehog-fn)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.lens)
            (hsPkgs.distributive)
            (hsPkgs.bytestring)
            (hsPkgs.digit)
            (hsPkgs.text)
            (hsPkgs.semigroups)
            (hsPkgs.zippers)
            (hsPkgs.vector)
            (hsPkgs.generics-sop)
            (hsPkgs.attoparsec)
            (hsPkgs.scientific)
            (hsPkgs.tagged)
            (hsPkgs.mtl)
            (hsPkgs.semigroupoids)
            (hsPkgs.containers)
            (hsPkgs.natural)
            (hsPkgs.contravariant)
            (hsPkgs.waargonaut)
            ];
          };
        };
      };
    }