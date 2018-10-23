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
        name = "fclabels-monadlib";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bardur Arantsson <bardur@scientician.net>";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "MonadLib monadic interface for the \"fclabels\" package.";
      description = "A MonadLib-compatible monadic interface for the \"fclabels\" package.";
      buildType = "Simple";
    };
    components = {
      "fclabels-monadlib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.monadLib)
          (hsPkgs.fclabels)
        ];
      };
    };
  }