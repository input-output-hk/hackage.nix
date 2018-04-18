{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "scan";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Christian Maeder 2010";
        maintainer = "chr.maeder@web.de";
        author = "chr.maeder@web.de";
        homepage = "http://projects.haskell.org/style-scanner";
        url = "";
        synopsis = "lexical style suggestions for source code";
        description = "scan checks the format of your source code. It reports\n(and partly repairs if given the @-@ option):\nnon-ascii characters,\ntabs or carriage returns,\ntrailing white spaces,\nbackslash at line end,\nunconventional comment delimiters,\ntoo long lines,\ntoo many consecutive blank lines,\nnot a single blank between tokens,\nnot a single final newline,\nno spaces after commas,\nspaces between parens and infix operators in sections,\nbad layout (wrt @do@ or @of@).\nIt may be useful in conjunction with\n<http://community.haskell.org/~ndm/hlint/>\nto give suggestions on how to improve your source code.\nRepairing is not suited for slices (aka @\$(...)@) in template haskell or if\nyou like to align your code at @=@ or @->@ in the middle of a line (thus\nwanting multiple blanks). Furthermore layout may be destroyed by inserting\nor deleting blanks, but this is an indication for improving layout anyway.\nAlso lines may become too long after inserting blanks.";
        buildType = "Simple";
      };
      components = {
        exes = {
          scan = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
            ];
          };
        };
      };
    }