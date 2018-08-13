{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "heavy-logger";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya Portnov";
      homepage = "";
      url = "";
      synopsis = "Full-weight logging based on fast-logger";
      description = "This is Haskell logging library, which prefers functionality and extendability\nover light weight and simplicity. It can use fast-logger as backend, and is compatible\nwith monad-logger interface, so it can be used in WAI projects.\nheavy-logger is also integrated with text-format-heavy string formatting library.";
      buildType = "Simple";
    };
    components = {
      "heavy-logger" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
          (hsPkgs.fast-logger)
          (hsPkgs.monad-logger)
          (hsPkgs.hsyslog)
          (hsPkgs.text-format-heavy)
        ];
      };
    };
  }