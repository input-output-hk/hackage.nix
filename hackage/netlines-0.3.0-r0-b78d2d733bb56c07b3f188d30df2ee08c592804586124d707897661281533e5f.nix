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
        name = "netlines";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <es@ertes.de>";
      author = "Ertugrul Söylemez <es@ertes.de>";
      homepage = "";
      url = "";
      synopsis = "Enumerator tools for text-based network protocols";
      description = "Enumerator tools for text-based network protocols.  This includes,\namong other things, an enumeratee to split an incoming ByteString\nstream to a length-limited line stream in a safe manner (i.e. in\nconstant space).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.contstuff)
          (hsPkgs.enumerator)
        ];
      };
    };
  }