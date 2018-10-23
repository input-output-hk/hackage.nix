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
        name = "HStringTemplateHelpers";
        version = "0.0.4";
      };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2006-2008 Thomas Hartman";
      maintainer = "Thomas Hartman <thomashartman1 at gmail>";
      author = "Thomas Hartman";
      homepage = "";
      url = "";
      synopsis = "Convenience functions and instances for HStringTemplate";
      description = "Convenience functions and instances for HStringTemplate. I will deprecate this package if its contents are integrated into HStringTemplate.";
      buildType = "Simple";
    };
    components = {
      "HStringTemplateHelpers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HStringTemplate)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.HSH)
          (hsPkgs.mtl)
          (hsPkgs.safe)
        ];
      };
    };
  }