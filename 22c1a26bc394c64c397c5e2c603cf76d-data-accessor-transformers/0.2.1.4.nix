{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "data-accessor-transformers";
        version = "0.2.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Record_access";
      url = "";
      synopsis = "Use Accessor to access state in transformers State monad";
      description = "Use Accessor to access state in transformers State monad";
      buildType = "Simple";
    };
    components = {
      "data-accessor-transformers" = {
        depends  = [
          (hsPkgs.data-accessor)
          (hsPkgs.transformers)
          (hsPkgs.base)
        ];
      };
    };
  }