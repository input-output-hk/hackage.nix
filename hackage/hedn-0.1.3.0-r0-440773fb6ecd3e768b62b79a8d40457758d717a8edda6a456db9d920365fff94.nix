{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hedn"; version = "0.1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Alexander Bondarenko";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "https://bitbucket.org/dpwiz/hedn";
      url = "";
      synopsis = "EDN parsing and encoding";
      description = "A EDN parsing and encoding library inspired by Data.Aeson.\n\nBased on specs published at <https://github.com/edn-format/edn>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.stringsearch)
          ];
        };
      tests = {
        "test-parser" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hedn)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.ansi-terminal)
            ];
          };
        "test-encoder" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hedn)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.ansi-terminal)
            ];
          };
        };
      };
    }