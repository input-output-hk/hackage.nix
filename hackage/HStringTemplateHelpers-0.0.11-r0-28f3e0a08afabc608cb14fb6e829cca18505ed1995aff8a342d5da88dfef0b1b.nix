{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "HStringTemplateHelpers";
        version = "0.0.11";
      };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2006-2008 Thomas Hartman";
      maintainer = "Thomas Hartman <thomashartman1 at gmail>";
      author = "Thomas Hartman";
      homepage = "http://patch-tag.com/tphyahoo/r/tphyahoo/HStringTemplateHelpers";
      url = "";
      synopsis = "Convenience functions and instances for HStringTemplate";
      description = "Convenience functions and instances for HStringTemplate. I will deprecate this package if its contents are integrated into HStringTemplate.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HStringTemplate)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.HSH)
          (hsPkgs.mtl)
          (hsPkgs.safe)
          (hsPkgs.strict)
          (hsPkgs.FileManipCompat)
        ] ++ [ (hsPkgs.base) ];
      };
    };
  }