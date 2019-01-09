{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      ffi = false;
      gmp = false;
      curses = false;
      release = true;
      freestanding = false;
      ci = false;
      execonly = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "idris"; version = "0.9.19"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Edwin Brady <eb@cs.st-andrews.ac.uk>";
      author = "Edwin Brady";
      homepage = "http://www.idris-lang.org/";
      url = "";
      synopsis = "Functional Programming Language with Dependent Types";
      description = "Idris is a general purpose language with full dependent types.\nIt is compiled, with eager evaluation.\nDependent types allow types to be predicated on values,\nmeaning that some aspects of a program's behaviour can be\nspecified precisely in the type. The language is closely\nrelated to Epigram and Agda. There is a tutorial at\n<http://www.idris-lang.org/documentation>.\nFeatures include:\n\n* Full dependent types with dependent pattern matching\n\n* where clauses, with rule, simple case expressions,\npattern matching let and lambda bindings\n\n* Type classes, monad comprehensions\n\n* do notation, idiom brackets, syntactic conveniences for lists,\ntuples, dependent pairs\n\n* Totality checking\n\n* Coinductive types\n\n* Indentation significant syntax, extensible syntax\n\n* Tactic based theorem proving (influenced by Coq)\n\n* Cumulative universes\n\n* Simple foreign function interface (to C)\n\n* Hugs style interactive environment";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = (((((([
          (hsPkgs.base)
          (hsPkgs.annotated-wl-pprint)
          (hsPkgs.ansi-terminal)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.cheapskate)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.fingertree)
          (hsPkgs.haskeline)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parsers)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.trifecta)
          (hsPkgs.uniplate)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          (hsPkgs.vector-binary-instances)
          (hsPkgs.zip-archive)
          (hsPkgs.zlib)
          (hsPkgs.safe)
          ] ++ (pkgs.lib).optional (system.isLinux) (hsPkgs.unix)) ++ (pkgs.lib).optional (system.isFreebsd) (hsPkgs.unix)) ++ (pkgs.lib).optional (system.isOsx) (hsPkgs.unix)) ++ (pkgs.lib).optional (system.isWindows) (hsPkgs.Win32)) ++ (pkgs.lib).optional (flags.ffi) (hsPkgs.libffi)) ++ (pkgs.lib).optional (flags.gmp) (hsPkgs.libffi)) ++ (pkgs.lib).optional (flags.curses) (hsPkgs.hscurses);
        };
      exes = {
        "idris" = {
          depends = [
            (hsPkgs.idris)
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.haskeline)
            (hsPkgs.transformers)
            ];
          };
        "idris-c" = {
          depends = [
            (hsPkgs.idris)
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.transformers)
            ];
          };
        "idris-javascript" = {
          depends = [
            (hsPkgs.idris)
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.transformers)
            ];
          };
        "idris-node" = {
          depends = [
            (hsPkgs.idris)
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }