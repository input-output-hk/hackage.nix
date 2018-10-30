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
        name = "monad-journal";
        version = "0.2.1.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "dimitri.sabadie@gmail.com";
      author = "DimitriSabadie";
      homepage = "https://github.com/skypers/monad-journal";
      url = "";
      synopsis = "On-the-fly logging typeclass and monad transformer";
      description = "This package provides a typeclass for logging situations\nwhen you want to deal with the logs on-the-fly.\nIt also exports a monad transformer that enables such a\nkind of logging in any monad.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.either)
        ];
      };
    };
  }