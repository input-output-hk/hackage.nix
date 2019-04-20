{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "fits-parse"; version = "0.0.1"; };
      license = "BSD-2-Clause";
      copyright = "Copyright (c) 2019 Zac Slade";
      maintainer = "krakrjak@gmail.com";
      author = "Zac Slade";
      homepage = "https://github.com/krakrjak/fits-parse#readme";
      url = "";
      synopsis = "Parse FITS files";
      description = "Parse and manipulate FITS data natively in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.megaparsec)
          (hsPkgs.parser-combinators)
          (hsPkgs.text)
          (hsPkgs.text-latin1)
          ];
        };
      exes = {
        "omnibus" = {
          depends = [
            (hsPkgs.JuicyPixels)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.fast-logger)
            (hsPkgs.fits-parse)
            (hsPkgs.optparse-applicative)
            (hsPkgs.statistics)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }