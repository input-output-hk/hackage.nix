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
      specVersion = "1.20";
      identifier = {
        name = "arrowp-qq";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Jose Iborra <pepeiborra@gmail.com>";
      author = "Jose Iborra <pepeiborra@gmail.com>";
      homepage = "http://www.haskell.org/arrows/";
      url = "";
      synopsis = "quasiquoter translating arrow notation into Haskell 98";
      description = "A quasiquoter built on top of the arrowp package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.haskell-src)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
        ];
      };
    };
  }