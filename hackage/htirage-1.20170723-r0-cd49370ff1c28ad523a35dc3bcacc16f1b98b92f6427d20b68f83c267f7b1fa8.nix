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
        name = "htirage";
        version = "1.20170723";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+htirage@autogeree.net>";
      author = "Julien Moutinho <julm+htirage@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "Equiprobable draw from publicly verifiable random data.";
      description = "An equiprobable alternative to <https://tools.ietf.org/html/rfc3797 Publicly Verifiable Nominations Committee (NomCom) Random Selection>.";
      buildType = "Simple";
    };
    components = {
      "htirage" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }