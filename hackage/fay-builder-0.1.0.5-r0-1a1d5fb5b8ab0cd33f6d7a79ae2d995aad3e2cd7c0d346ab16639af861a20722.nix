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
        name = "fay-builder";
        version = "0.1.0.5";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "2013 Silk B.V.";
      maintainer = "code@silk.co";
      author = "Silk B.V.";
      homepage = "";
      url = "";
      synopsis = "Compile Fay code on cabal install, and ad-hoc recompile during development";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.fay)
          (hsPkgs.filepath)
          (hsPkgs.split)
          (hsPkgs.text)
        ];
      };
    };
  }