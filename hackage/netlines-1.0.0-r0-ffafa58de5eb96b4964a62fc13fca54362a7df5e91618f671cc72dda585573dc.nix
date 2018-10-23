{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "netlines";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <es@ertes.de>";
      author = "Ertugrul Söylemez <es@ertes.de>";
      homepage = "";
      url = "";
      synopsis = "Enumerator tools for text-based network protocols";
      description = "Enumerator tools for text-based network protocols.  This includes,\namong other things, an enumeratee to split an incoming stream to a\nlength-limited line stream in a safe manner (i.e. in constant\nspace).";
      buildType = "Simple";
    };
    components = {
      "netlines" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.contstuff)
          (hsPkgs.enumerator)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      exes = {
        "netlines-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HTF)
            (hsPkgs.random)
          ];
        };
      };
    };
  }