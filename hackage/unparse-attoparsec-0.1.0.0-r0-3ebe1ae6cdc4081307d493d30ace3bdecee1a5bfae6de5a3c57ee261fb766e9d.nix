{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "unparse-attoparsec"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://github.com/Lysxia/unparse-attoparsec#readme";
      url = "";
      synopsis = "An attoparsec roundtrip";
      description = "DRY applicative and monadic @attoparsec@ (un)parsers.\nSee README below.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.profunctors)
          ];
        };
      tests = {
        "example-aeson" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.constraints)
            (hsPkgs.mtl)
            (hsPkgs.profunctors)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.unparse-attoparsec)
            (hsPkgs.vector)
            ];
          };
        "example-regex" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.profunctor-monad)
            (hsPkgs.unparse-attoparsec)
            ];
          };
        };
      };
    }