{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      withconstraints = true;
      withdatakinds = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "smtlib2";
        version = "0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "guenther@forsyte.at";
      author = "Henning Günther <guenther@forsyte.at>";
      homepage = "";
      url = "";
      synopsis = "A type-safe interface to communicate with an SMT solver.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.atto-lisp)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.data-fix)
          (hsPkgs.tagged)
        ] ++ pkgs.lib.optional (flags.withconstraints) (hsPkgs.constraints);
      };
    };
  }