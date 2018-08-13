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
      specVersion = "1.10";
      identifier = {
        name = "ghc-generic-instances";
        version = "0.1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "alan.zimm@gmail.com";
      author = "Alan Zimmerman";
      homepage = "https://github.com/alanz/ghc-generic-instances";
      url = "";
      synopsis = "Derived instances of GHC.Generic of the GHC AST";
      description = "";
      buildType = "Simple";
    };
    components = {
      "ghc-generic-instances" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
        ];
      };
    };
  }