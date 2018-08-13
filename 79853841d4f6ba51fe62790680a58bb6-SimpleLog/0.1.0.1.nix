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
      specVersion = "1.8";
      identifier = {
        name = "SimpleLog";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andras Slemmer";
      author = "Andras Slemmer";
      homepage = "";
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