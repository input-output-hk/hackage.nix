{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "jmacro";
        version = "0.5.8";
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
      "jmacro" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.safe)
          (hsPkgs.parsec)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.bytestring)
          (hsPkgs.syb)
          (hsPkgs.json)
          (hsPkgs.regex-posix)
        ];
      };
      exes = {
        "jmacro" = {
          depends  = [
            (hsPkgs.parseargs)
          ];
        };
      };
    };
  }