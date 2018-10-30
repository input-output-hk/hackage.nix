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
      specVersion = "1.8";
      identifier = {
        name = "garepinoh";
        version = "0.9.9.2.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "Public Domain";
      maintainer = "Mekeor Melire <mekeor.melire@gmail.com>";
      author = "Mekeor Melire <mekeor.melire@gmail.com>";
      homepage = "http://hub.darcs.net/mekeor/Garepinoh/text/README.md";
      url = "";
      synopsis = "reverse prefix notation calculator and calculation library";
      description = "Another concatenative and stack-based calculator using\nreverse prefix (– not polish! –) notation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskeline)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "garepinoh" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskeline)
            (hsPkgs.transformers)
          ];
        };
        "garepiboh" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskeline)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }