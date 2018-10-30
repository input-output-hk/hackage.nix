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
        name = "hruby";
        version = "0.2.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "";
      url = "";
      synopsis = "Embed Ruby in your Haskell program.";
      description = "Warning: this is completely experimental. Everything you need should be in \"Foreign.Ruby\".";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
          (hsPkgs.stm)
          (hsPkgs.scientific)
        ];
      };
      tests = {
        "test-roundtrip" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hruby)
            (hsPkgs.aeson)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.attoparsec)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }