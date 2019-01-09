{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "binary-ext"; version = "2.0.1"; };
      license = "LicenseRef-Apache";
      copyright = "2017, 2018 Warlock <internalmike@gmail.com>";
      maintainer = "Warlock <internalmike@gmail.com>";
      author = "Warlock <internalmike@gmail.com>";
      homepage = "https://github.com/A1-Triard/binary-ext#readme";
      url = "";
      synopsis = "An alternate with strong-typed errors for `Data.Binary.Get` monad from `binary` package.";
      description = "An alternate with strong-typed errors for `Data.Binary.Get` monad from `binary` package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.errors)
          (hsPkgs.exceptions)
          (hsPkgs.monad-control)
          (hsPkgs.monad-loops)
          (hsPkgs.mono-traversable)
          (hsPkgs.mtl)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          ];
        };
      tests = {
        "binary-ext-test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.binary-ext)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.errors)
            (hsPkgs.exceptions)
            (hsPkgs.monad-control)
            (hsPkgs.monad-loops)
            (hsPkgs.mono-traversable)
            (hsPkgs.mtl)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            ];
          };
        };
      };
    }