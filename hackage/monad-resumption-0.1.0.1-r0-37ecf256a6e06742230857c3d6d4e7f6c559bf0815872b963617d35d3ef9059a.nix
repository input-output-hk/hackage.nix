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
        name = "monad-resumption";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian Graves <thegravian@gmail.com>";
      author = "Ian Graves, Adam Procter";
      homepage = "https://github.com/igraves/resumption_monads";
      url = "";
      synopsis = "Resumption and reactive resumption monads for Haskell.";
      description = "Resumption and reactive-resumption monads for Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
        ];
      };
    };
  }