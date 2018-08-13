{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      static = false;
      relocatable = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "cryptol";
        version = "2.6.0";
      };
      license = "BSD-3-Clause";
      copyright = "2013-2018 Galois Inc.";
      maintainer = "cryptol@galois.com";
      author = "Galois, Inc.";
      homepage = "http://www.cryptol.net/";
      url = "";
      synopsis = "Cryptol: The Language of Cryptography";
      description = "Cryptol is a domain-specific language for specifying cryptographic algorithms. A Cryptol implementation of an algorithm resembles its mathematical specification more closely than an implementation in a general purpose language. For more, see <http://www.cryptol.net/>.";
      buildType = "Simple";
    };
    components = {
      "cryptol" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.gitrev)
          (hsPkgs.GraphSCC)
          (hsPkgs.heredoc)
          (hsPkgs.monad-control)
          (hsPkgs.monadLib)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.sbv)
          (hsPkgs.simple-smt)
          (hsPkgs.strict)
          (hsPkgs.text)
          (hsPkgs.tf-random)
          (hsPkgs.transformers-base)
          (hsPkgs.mtl)
          (hsPkgs.time)
          (hsPkgs.panic)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
          (hsPkgs.buildPackages.happy)
        ];
      };
      exes = {
        "cryptol" = {
          depends  = [
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.containers)
            (hsPkgs.cryptol)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.monad-control)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
        "cryptol-html" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.cryptol)
            (hsPkgs.blaze-html)
          ];
        };
      };
      benchmarks = {
        "cryptol-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.cryptol)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.sbv)
            (hsPkgs.text)
          ];
        };
      };
    };
  }