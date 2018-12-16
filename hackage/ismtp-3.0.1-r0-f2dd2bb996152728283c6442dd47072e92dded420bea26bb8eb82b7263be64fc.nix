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
      specVersion = "1.6";
      identifier = {
        name = "ismtp";
        version = "3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <es@ertes.de>";
      author = "Ertugrul Söylemez <es@ertes.de>";
      homepage = "";
      url = "";
      synopsis = "Advanced ESMTP library";
      description = "This library provides fast, incremental client-side ESMTP sessions\nfor mail exchangers and mail transfer agents.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.contstuff)
          (hsPkgs.dnscache)
          (hsPkgs.enumerator)
          (hsPkgs.monad-peel)
          (hsPkgs.netlines)
          (hsPkgs.network)
          (hsPkgs.vector)
        ];
      };
    };
  }