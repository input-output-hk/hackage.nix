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
        name = "antisplice";
        version = "0.7.0.0";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "marvin.cohrs@gmx.net";
      author = "Marvin Cohrs";
      homepage = "";
      url = "";
      synopsis = "An engine for text-based dungeons.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "antisplice" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.chatty)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.haskeline)
          (hsPkgs.time)
        ];
      };
    };
  }