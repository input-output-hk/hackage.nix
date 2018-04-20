{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      noeffects = false;
      llvm = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "idris";
          version = "0.9.9.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Edwin Brady <eb@cs.st-andrews.ac.uk>";
        author = "Edwin Brady";
        homepage = "http://www.idris-lang.org/";
        url = "";
        synopsis = "Functional Programming Language with Dependent Types";
        description = "Idris is a general purpose language with full dependent types.\nIt is compiled, with eager evaluation.\nDependent types allow types to be predicated on values,\nmeaning that some aspects of a program's behaviour can be\nspecified precisely in the type. The language is closely\nrelated to Epigram and Agda. There is a tutorial at <http://www.idris-lang.org/documentation>.\nFeatures include:\n\n* Full dependent types with dependent pattern matching\n\n* where clauses, with rule, simple case expressions,\npattern matching let and lambda bindings\n\n* Type classes, monad comprehensions\n\n* do notation, idiom brackets, syntactic conveniences for lists,\ntuples, dependent pairs\n\n* Totality checking\n\n* Coinductive types\n\n* Indentation significant syntax, extensible syntax\n\n* Tactic based theorem proving (influenced by Coq)\n\n* Cumulative universes\n\n* Simple foreign function interface (to C)\n\n* Hugs style interactive environment";
        buildType = "Custom";
      };
      components = {
        exes = {
          idris = {
            depends  = ((([
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.mtl
              hsPkgs.Cabal
              hsPkgs.haskeline
              hsPkgs.split
              hsPkgs.directory
              hsPkgs.time
              hsPkgs.containers
              hsPkgs.process
              hsPkgs.transformers
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.pretty
              hsPkgs.language-java
              hsPkgs.libffi
              hsPkgs.vector
              hsPkgs.vector-binary-instances
              hsPkgs.ansi-terminal
            ] ++ pkgs.lib.optional system.isLinux hsPkgs.unix) ++ pkgs.lib.optional system.isOsx hsPkgs.unix) ++ pkgs.lib.optional system.isWindows hsPkgs.Win32) ++ pkgs.lib.optional _flags.llvm hsPkgs.llvm-general;
          };
        };
      };
    }