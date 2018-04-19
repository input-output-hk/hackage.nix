{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      werror = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ruin";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Nicolas Frisby";
        maintainer = "nicolas.frisby@gmail.com";
        author = "Nicolas Frisby";
        homepage = "";
        url = "";
        synopsis = "Pliable records";
        description = "@ruin@ is a DSL for working with record types. It focuses on\nconverting between conventionally-declared record types and\nsupporting named function arguments.\n\n* Uses @-XOverloadedLabels@, so that @#x@ is a first-class label for\nthe field named @x@.\n* Provides @GHC.Generics@ defaults.\n* Named arguments: @\\\\[rna|x y z] -> (x,y,z)@ inhabits @(\"x\" :\\@ a,\"y\"\n:\\@ b,\"z\" :\\@ c) -> (a,b,c)@.\n* Relies on @-XDuplicateRecordFields@; the generic defaults only\nwork if record selector names do not have distinguishing prefices.\n* Custom type errors, such as @ruin: Could not find the field \\`x\\'\nin the type ...@\n* \"Data.Ruin.R\" provides anonymous record types where the order of\nfields is irrelevant.\n\nSee the \"Data.Ruin\" module for an overview.";
        buildType = "Simple";
      };
      components = {
        ruin = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.cereal
            hsPkgs.deepseq
            hsPkgs.ghc-prim
            hsPkgs.parsec
            hsPkgs.template-haskell
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.ruin
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.should-not-typecheck
              hsPkgs.smallcheck
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }