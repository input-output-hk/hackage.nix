{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "csv-enumerator"; version = "0.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ozgun Ataman <ozataman@gmail.com>";
      author = "Ozgun Ataman";
      homepage = "http://github.com/ozataman/csv-enumerator";
      url = "";
      synopsis = "A flexible, fast, enumerator-based CSV parser library for Haskell.";
      description = "For more information and examples, check out the README at:\n<http://github.com/ozataman/csv-enumerator>.\nThe API is fairly well documented and I would encourage you to keep your\nhaddocks handy.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-enumerator)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.enumerator)
          (hsPkgs.transformers)
          (hsPkgs.safe)
          (hsPkgs.unix-compat)
          ];
        };
      };
    }