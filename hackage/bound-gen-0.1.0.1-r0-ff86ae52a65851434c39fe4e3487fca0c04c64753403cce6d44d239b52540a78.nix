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
        name = "bound-gen";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jozefg@cmu.edu";
      author = "Danny Gratzer";
      homepage = "";
      url = "";
      synopsis = "Unwrap Scope's with globally fresh values";
      description = "It's quite common when working with bound to need to unwrap a @Scope@.\nIn order to ensure that this can be done safely, without shadowing\nany existing free variables, @bound-gen@ glues @monad-gen@'s fresh\nvalue monad into @bound@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bound)
          (hsPkgs.monad-gen)
          (hsPkgs.mtl)
        ];
      };
    };
  }