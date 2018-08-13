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
        name = "sv-core";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017-2018, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "george@qfpl.io";
      author = "George Wilson";
      homepage = "https://github.com/qfpl/sv";
      url = "";
      synopsis = "Encode and decode separated values (CSV, PSV, ...)";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nsv-core is the decoding and encoding for the\n<https://hackage.haskell.org/package/sv sv> CSV library. This is split\noff into its own package so that one swap out sv's parser without incurring\na dependency on the default parser\n(<https://hackage.haskell.org/package/hw-dsv hw-dsv>)\n\nFor an example, see <https://hackage.haskell.org/package/sv-cassava sv-cassava>";
      buildType = "Simple";
    };
    components = {
      "sv-core" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.deepseq)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.profunctors)
          (hsPkgs.readable)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.trifecta)
          (hsPkgs.utf8-string)
          (hsPkgs.validation)
          (hsPkgs.vector)
          (hsPkgs.void)
        ];
      };
      tests = {
        "tasty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.semigroupoids)
            (hsPkgs.sv-core)
            (hsPkgs.profunctors)
            (hsPkgs.semigroups)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.validation)
            (hsPkgs.vector)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }