{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "anansi-pandoc";
        version = "0.1.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "John Millikin <jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://john-millikin.com/software/anansi/";
      url = "";
      synopsis = "Looms which use Pandoc to parse and produce a variety of formats.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "anansi-pandoc" = {
        depends  = [
          (hsPkgs.anansi)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.pandoc)
          (hsPkgs.monads-tf)
          (hsPkgs.text)
        ];
      };
    };
  }