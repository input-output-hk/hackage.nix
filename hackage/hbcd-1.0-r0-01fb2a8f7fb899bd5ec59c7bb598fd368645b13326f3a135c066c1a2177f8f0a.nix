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
        name = "hbcd";
        version = "1.0";
      };
      license = "MIT";
      copyright = "Andrew Kay, 2012";
      maintainer = "andrewjkay@gmail.com";
      author = "Andrew Kay";
      homepage = "";
      url = "";
      synopsis = "Packed binary-coded decimal (BCD) serialization";
      description = "A module containing packed binary-coded decimal (BCD) serialization\nfunctions.  Packed BCD is commonly used to encode numbers in mainframe\ndatasets.";
      buildType = "Simple";
    };
    components = {
      "hbcd" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.Decimal)
          (hsPkgs.digits)
          (hsPkgs.split)
        ];
      };
    };
  }