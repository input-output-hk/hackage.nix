{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "maam";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "david.darais@gmail.com";
      author = "David Darais";
      homepage = "";
      url = "";
      synopsis = "Monadic Abstracting Abstract Machines (MAAM) built on Galois Transformers";
      description = "Monadic Abstracting Abstract Machines (MAAM) built on\nGalois Transformers. See \"Galois Transformers and Modular\nAbstract Interpreters\" by Darais, Might and Van Horn.";
      buildType = "Simple";
    };
    components = {
      "maam" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "maam_examples" = {
          depends  = [ (hsPkgs.maam) ];
        };
      };
    };
  }