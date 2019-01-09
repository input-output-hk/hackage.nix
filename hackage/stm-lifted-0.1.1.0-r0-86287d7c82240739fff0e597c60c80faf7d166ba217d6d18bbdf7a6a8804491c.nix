{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stm-lifted"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Maksymilian Owsianny";
      maintainer = "Maksymilian.Owsianny@gmail.com";
      author = "Maksymilian Owsianny";
      homepage = "";
      url = "";
      synopsis = "Software Transactional Memory lifted to MonadIO";
      description = "A MonadIO version of <http://hackage.haskell.org/package/stm STM> library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.transformers) (hsPkgs.stm) ];
        };
      };
    }