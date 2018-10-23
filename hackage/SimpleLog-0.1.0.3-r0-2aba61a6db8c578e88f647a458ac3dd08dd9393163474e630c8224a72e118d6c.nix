{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "SimpleLog";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andras Slemmer";
      author = "Andras Slemmer";
      homepage = "https://github.com/exFalso/SimpleLog/";
      url = "";
      synopsis = "Simple, configurable logging";
      description = "SimpleLog allows configurable multi-threaded logging";
      buildType = "Simple";
    };
    components = {
      "SimpleLog" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.ansi-terminal)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.ForkableT)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.resourcet)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.text)
          (hsPkgs.th-lift)
          (hsPkgs.semigroups)
        ];
      };
    };
  }