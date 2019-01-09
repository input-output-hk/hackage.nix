{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "data-accessor-monads-tf"; version = "0.2.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Stephan Friedrichs (deduktionstheorem at web dot de)";
      homepage = "http://www.haskell.org/haskellwiki/Record_access";
      url = "";
      synopsis = "Use Accessor to access state in monads-tf State monad type family";
      description = "Use Accessor to access state in monads-tf State monad type family";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.data-accessor)
          (hsPkgs.monads-tf)
          (hsPkgs.transformers)
          (hsPkgs.base)
          ];
        };
      };
    }