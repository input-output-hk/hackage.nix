{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "roundtrip-aeson"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2014-2015 Anchor Systems and others.";
      maintainer = "Anchor Engineering <engineering@anchor.net.au>";
      author = "Thomas Sutton <me@thomas-sutton.id.au>, Christian Marie <christian@ponies.io>";
      homepage = "https://github.com/anchor/roundtrip-aeson";
      url = "";
      synopsis = "Un-/parse JSON with roundtrip invertible syntax definitions.";
      description = "Un-/parse JSON with roundtrip invertible syntax definitions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.roundtrip)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.lens-aeson)
            (hsPkgs.roundtrip)
            (hsPkgs.roundtrip-aeson)
            (hsPkgs.text)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }