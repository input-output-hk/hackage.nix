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
        name = "monad-stlike-io";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "Taru Karttunen <taruti@taruti.net>";
      maintainer = "taruti@taruti.net";
      author = "Taru Karttunen";
      homepage = "http://github.com/taruti/monad-stlike-io";
      url = "";
      synopsis = "ST-like monad capturing variables to regions and supporting IO.";
      description = "ST-like monad capturing variables to regions and supporting IO.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.monads-tf)
        ];
      };
    };
  }