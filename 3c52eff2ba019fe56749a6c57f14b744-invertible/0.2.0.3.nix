{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      arrows = false;
      invariant = true;
      lens = true;
      partial-isomorphisms = true;
      piso = false;
      semigroupoids = true;
      typecompose = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "invertible";
          version = "0.2.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2016";
        maintainer = "dylan@dylex.net";
        author = "Dylan Simon";
        homepage = "";
        url = "";
        synopsis = "bidirectional arrows, bijective functions, and invariant functors";
        description = "Representations and operations for bidirectional arrows (total isomorphisms: an\narrow paired with its inverse).  Classes for invariant functors and monoidal\nfunctors.  Includes a number of useful bijections and operations, as well as\ninteroperability with related packages.\n\nMost users will want to import one or more of \"Data.Invertible\" qualified, \"Control.Invertible.Monoidal\" unqualified, and any additional compatibility modules.";
        buildType = "Simple";
      };
      components = {
        invertible = {
          depends  = (((((([
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.haskell-src-meta
            hsPkgs.template-haskell
          ] ++ pkgs.lib.optional _flags.arrows hsPkgs.arrows) ++ pkgs.lib.optional _flags.invariant hsPkgs.invariant) ++ pkgs.lib.optional _flags.lens hsPkgs.lens) ++ [
            hsPkgs.partial-isomorphisms
          ]) ++ [
            hsPkgs.Piso
          ]) ++ pkgs.lib.optional _flags.semigroupoids hsPkgs.semigroupoids) ++ pkgs.lib.optional _flags.typecompose hsPkgs.TypeCompose;
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.QuickCheck
              hsPkgs.invertible
            ];
          };
        };
      };
    }