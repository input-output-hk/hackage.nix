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
      specVersion = "1.6";
      identifier = {
        name = "KiCS";
        version = "0.8.5";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Bernd Braßel";
      author = "Bernd Braßel";
      homepage = "http://curry-language.org";
      url = "";
      synopsis = "A compiler from Curry to Haskell";
      description = "This package builds two binaries, kics and kicsi, respectively.\nThe first is the Curry to Haskell compiler, the latter a text\nbased interactive environment.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "kics" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.old-time)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.curry-base)
          ];
        };
        "kicsi" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.old-time)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.readline)
            (hsPkgs.curry-base)
          ];
        };
      };
    };
  }