{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "kit"; version = "0.2"; };
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.HTTP)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.json)
            (hsPkgs.mtl)
            (hsPkgs.cmdargs)
            (hsPkgs.MissingH)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }