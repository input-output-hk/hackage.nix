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
      specVersion = "1.10";
      identifier = {
        name = "snappy-framing";
        version = "0.1.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013 Kim Altintop";
      maintainer = "kim.altintop@gmail.com";
      author = "Kim Altintop";
      homepage = "https://github.com/kim/snappy-framing";
      url = "";
      synopsis = "Snappy Framing Format in Haskell";
      description = "Implementation of the Snappy framing format (SVN revision 71, cf.\n<http://code.google.com/p/snappy/source/browse/trunk/framing_format.txt?r=71>)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.snappy)
        ];
      };
    };
  }