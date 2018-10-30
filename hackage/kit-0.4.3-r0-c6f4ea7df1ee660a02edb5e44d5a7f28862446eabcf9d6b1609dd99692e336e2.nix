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
      specVersion = "1.2";
      identifier = {
        name = "kit";
        version = "0.4.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nkpart@gmail.com";
      author = "Nick Partridge";
      homepage = "";
      url = "";
      synopsis = "A dependency manager for XCode (Objective-C) projects";
      description = "A dependency manager for XCode (Objective-C) projects";
      buildType = "Simple";
    };
    components = {
      exes = {
        "kit" = {
          depends  = [
            (hsPkgs.process)
            (hsPkgs.network)
            (hsPkgs.mtl)
            (hsPkgs.json)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.cmdargs)
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.MissingH)
            (hsPkgs.HTTP)
            (hsPkgs.Glob)
          ];
        };
      };
    };
  }