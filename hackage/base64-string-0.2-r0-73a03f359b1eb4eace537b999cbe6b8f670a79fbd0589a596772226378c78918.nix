{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "base64-string";
        version = "0.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Ian Lynagh, 2005, 2007";
      maintainer = "igloo@earth.li";
      author = "Ian Lynagh";
      homepage = "http://urchin.earth.li/~ian/cabal/base64-string/";
      url = "";
      synopsis = "Base64 implementation for String's.";
      description = "This Base64 implementation uses the characters\nA-Z a-z 0-9 + /\nalong with\n=\nto signal the number of characters mod 3.\nIt is compliant with both PEM (RFC 989 / RFC 1421) and MIME (RFC 2045).";
      buildType = "Simple";
    };
    components = {
      "base64-string" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }