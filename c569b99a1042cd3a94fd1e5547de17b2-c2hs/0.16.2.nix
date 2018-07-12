{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base3 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "c2hs";
          version = "0.16.2";
        };
        license = "GPL-2.0-only";
        copyright = "Copyright (c) 1999-2007 Manuel M T Chakravarty\n2005-2008 Duncan Coutts\n2008      Benedikt Huber";
        maintainer = "chak@cse.unsw.edu.au, duncan@haskell.org";
        author = "Manuel M T Chakravarty";
        homepage = "http://www.cse.unsw.edu.au/~chak/haskell/c2hs/";
        url = "";
        synopsis = "C->Haskell FFI tool that gives some cross-language type safety";
        description = "C->Haskell assists in the development of Haskell bindings to C\nlibraries. It extracts interface information from C header\nfiles and generates Haskell code with foreign imports and\nmarshaling. Unlike writing foreign imports by hand (or using\nhsch2s), this ensures that C functions are imported with the\ncorrect Haskell types.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "c2hs" = {
            depends  = [
              hsPkgs.base
              hsPkgs.language-c
              hsPkgs.filepath
            ] ++ (if _flags.base3
              then [
                hsPkgs.base
                hsPkgs.process
                hsPkgs.directory
                hsPkgs.array
                hsPkgs.containers
                hsPkgs.pretty
              ]
              else [ hsPkgs.base ]);
          };
        };
      };
    }