{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hashflare";
        version = "0.1.0.0";
      };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "nbrk@linklevel.net";
      author = "Nikolay Burkov";
      homepage = "https://github.com/nbrk/hashflare";
      url = "";
      synopsis = "A library for working with HashFlare.io contracts and hashrates";
      description = "Library that models HashFlare.io cloud mining service's accounts, contracts\nand mining hashrates. Simple linear projections of the account's balance\n(increase in profits over time) can be easily modelled by provided combinators.";
      buildType = "Simple";
    };
    components = {
      "hashflare" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.simple-money)
        ];
      };
    };
  }