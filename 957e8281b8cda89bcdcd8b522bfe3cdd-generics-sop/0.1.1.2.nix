{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "generics-sop";
          version = "0.1.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "edsko@well-typed.com";
        author = "Edsko de Vries <edsko@well-typed.com>, Andres Löh <andres@well-typed.com>";
        homepage = "";
        url = "";
        synopsis = "Generic Programming using True Sums of Products";
        description = "A library to support the definition of generic functions.\nDatatypes are viewed in a uniform, structured way:\nthe choice between constructors is represented using an n-ary\nsum, and the arguments of each constructor are represented using\nan n-ary product.\n\nThe module \"Generics.SOP\" is the main module of this library and contains\nmore detailed documentation.\n\nExamples of using this library are provided by the following\npackages:\n\n* @<https://hackage.haskell.org/package/basic-sop basic-sop>@ basic examples,\n\n* @<https://hackage.haskell.org/package/pretty-sop pretty-sop>@ generic pretty printing,\n\n* @<https://hackage.haskell.org/package/lens-sop lens-sop>@ generically computed lenses,\n\n* @<https://hackage.haskell.org/package/json-sop json-sop>@ generic JSON conversions.\n\nA detailed description of the ideas behind this library is provided by\nthe paper:\n\n* Edsko de Vries and Andres Löh.\n<http://www.andres-loeh.de/TrueSumsOfProducts True Sums of Products>.\nWorkshop on Generic Programming (WGP) 2014.\n";
        buildType = "Simple";
      };
      components = {
        generics-sop = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.ghc-prim
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") hsPkgs.tagged;
        };
      };
    }