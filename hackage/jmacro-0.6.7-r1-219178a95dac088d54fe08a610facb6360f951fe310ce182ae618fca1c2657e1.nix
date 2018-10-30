{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { benchmarks = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "jmacro";
        version = "0.6.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gershomb@gmail.com";
      author = "Gershom Bazerman";
      homepage = "";
      url = "";
      synopsis = "QuasiQuotation library for programmatic generation of Javascript code.";
      description = "Javascript syntax, functional syntax, hygienic names, compile-time guarantees of syntactic correctness, limited typechecking. Additional documentation available at <http://www.haskell.org/haskellwiki/Jmacro>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.wl-pprint-text)
          (hsPkgs.text)
          (hsPkgs.safe)
          (hsPkgs.parsec)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.bytestring)
          (hsPkgs.syb)
          (hsPkgs.aeson)
          (hsPkgs.regex-posix)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "jmacro" = {
          depends  = [
            (hsPkgs.parseargs)
          ];
        };
        "jmacro-bench" = {
          depends  = pkgs.lib.optional (flags.benchmarks) (hsPkgs.criterion);
        };
      };
    };
  }