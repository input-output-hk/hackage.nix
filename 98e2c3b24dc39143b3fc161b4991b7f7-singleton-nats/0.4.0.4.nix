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
      specVersion = "1.10";
      identifier = {
        name = "singleton-nats";
        version = "0.4.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2015 András Kovács";
      maintainer = "puttamalac@gmail.com";
      author = "András Kovács";
      homepage = "https://github.com/AndrasKovacs/singleton-nats";
      url = "";
      synopsis = "Unary natural numbers relying on the singletons infrastructure.";
      description = "Unary natural number relying on the <https://hackage.haskell.org/package/singletons singletons> infrastructure. More information about the general usage of singletons can be found on the <https://github.com/goldfirere/singletons singletons github> page.";
      buildType = "Simple";
    };
    components = {
      "singleton-nats" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.singletons)
        ];
      };
    };
  }