{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "flac-picture";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov92@gmail.com>";
      author = "Mark Karpov <markkarpov92@gmail.com>";
      homepage = "https://github.com/mrkkrp/flac-picture";
      url = "";
      synopsis = "Support for writing picture to FLAC metadata blocks with JuicyPixels";
      description = "Support for writing picture to FLAC metadata blocks with JuicyPixels.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.JuicyPixels)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.flac)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.JuicyPixels)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default-class)
            (hsPkgs.directory)
            (hsPkgs.flac)
            (hsPkgs.flac-picture)
            (hsPkgs.hspec)
            (hsPkgs.temporary)
          ];
        };
      };
    };
  }