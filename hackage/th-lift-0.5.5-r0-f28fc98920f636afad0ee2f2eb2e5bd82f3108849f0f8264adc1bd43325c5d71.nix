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
        name = "th-lift";
        version = "0.5.5";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Ian Lynagh, 2006";
      maintainer = "Mathieu Boespflug <mboes@tweag.net>";
      author = "Ian Lynagh";
      homepage = "";
      url = "";
      synopsis = "Derive Template Haskell's Lift class for datatypes.";
      description = "Derive Template Haskell's Lift class for datatypes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
        ] ++ (if compiler.isGhc && compiler.version.lt "6.12"
          then [
            (hsPkgs.packedstring)
            (hsPkgs.template-haskell)
          ]
          else [
            (hsPkgs.template-haskell)
          ]);
      };
    };
  }