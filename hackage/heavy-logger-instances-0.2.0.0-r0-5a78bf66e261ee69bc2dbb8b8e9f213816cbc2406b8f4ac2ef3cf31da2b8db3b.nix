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
        name = "heavy-logger-instances";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Ilya Portnov";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya Portnov";
      homepage = "https://github.com/portnov/heavy-logger#readme";
      url = "";
      synopsis = "Orphan instances for data types in heavy-logger package";
      description = "This package contains orphan instances for data types in heavy-logger package for:\n* Binary type class (from binary package)\n* MonadThrow, MonadCatch, MonadMask type classes (from exceptions package) for LoggingT transformer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.exceptions)
          (hsPkgs.heavy-logger)
          (hsPkgs.hsyslog)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.text-format-heavy)
        ];
      };
      tests = {
        "binary-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.exceptions)
            (hsPkgs.heavy-logger)
            (hsPkgs.heavy-logger-instances)
            (hsPkgs.hsyslog)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.text-format-heavy)
          ];
        };
      };
    };
  }