{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "llvm-data-interop";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "travitch@cs.wisc.edu";
      author = "Tristan Ravitch";
      homepage = "";
      url = "";
      synopsis = "A low-level data interoperability binding for LLVM";
      description = "This package converts the LLVM IR (either bitcode files or LLVM\nassembly) into a Haskell data type (defined in llvm-base-types).\nThe conversion uses the LLVM libraries to read bitcode.  It then\ntraverses the IR and produces a Haskell structure that can be\npattern matched against in pure code.\nNote that this library works with LLVM 3.0-3.3.\nThere are incompatible changes in this release relative to\nllvm-data-interop 0.2.0.  See the changelog in llvm-analysis-0.3.0.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.mtl)
          (hsPkgs.hashable)
          (hsPkgs.llvm-base-types)
          (hsPkgs.loch-th)
          (hsPkgs.unification-fd)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashtables)
          (hsPkgs.vector)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.dwarf)
          (hsPkgs.deepseq)
        ];
        libs = [ (pkgs."stdc++") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
    };
  }