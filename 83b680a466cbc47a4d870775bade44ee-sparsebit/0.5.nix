{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "sparsebit";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ahn, Ki Yung <kya@pdx.edu>";
        author = "Ahn, Ki Yung";
        homepage = "http://kyagrd.dyndns.org/wiki/SparseBitmapsForPatternMatchCoverage";
        url = "";
        synopsis = "Sparse bitmaps for pattern match coverage";
        description = "Pattern matching coverage over Algebraic Data Types(ADTs) has most often been studied in the context of pattern compilation algorithms. However, it is worth considering the pattern matching coverage problem in isolation, since general solutions will be independent of the specifics of any implementation or language.\nWe define an intuitive and mathematically well-established bit masking semantics for pattern match coverage. We design and implement a sparse bitmap data structure, which realizes this semantics in a compact and flexible manner. This bitmap data structure supports computing coverage solutions of large programs incrementally from coverage solutions of sub-programs. It can also be used as a common data representation for pattern coverage shared between different tools (e.g., compilers, linting tools, software analysis tools) that need pattern match coverage information.";
        buildType = "Simple";
      };
      components = {
        sparsebit = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
          ];
        };
      };
    }