{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "heavy-logger";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya Portnov";
      homepage = "";
      url = "";
      synopsis = "Full-weight logging based on fast-logger";
      description = "This is Haskell logging library, which prefers functionality and extendability\nover light weight and simplicity. It can use fast-logger as backend, and is compatible\nwith monad-logger interface, so it can be used in projects that already use monad-logger.\nheavy-logger is also integrated with text-format-heavy string formatting library.";
      buildType = "Simple";
    };
    components = {
      "heavy-logger" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.transformers-base)
          (hsPkgs.data-default)
          (hsPkgs.monad-control)
          (hsPkgs.lifted-base)
          (hsPkgs.template-haskell)
          (hsPkgs.th-lift)
          (hsPkgs.th-lift-instances)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
          (hsPkgs.fast-logger)
          (hsPkgs.monad-logger)
          (hsPkgs.hsyslog)
          (hsPkgs.text-format-heavy)
          (hsPkgs.thread-local-storage)
        ];
      };
    };
  }