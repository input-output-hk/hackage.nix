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
        name = "Frames-dsv";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Anthony Cowley";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "https://github.com/acowley/Frames-dsv#readme";
      url = "";
      synopsis = "Alternative CSV parser for the Frames package";
      description = "Alternative CSV parser for the Frames package. In cases\nwhere the built-in Frames CSV parser does not work\n(e.g. when dealing with data files that include newlines\nembedded in data values), the parsers exposed here may\nhelp.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.Frames)
          (hsPkgs.vinyl)
          (hsPkgs.hw-dsv)
          (hsPkgs.pipes)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Frames)
            (hsPkgs.Frames-dsv)
            (hsPkgs.pipes)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }