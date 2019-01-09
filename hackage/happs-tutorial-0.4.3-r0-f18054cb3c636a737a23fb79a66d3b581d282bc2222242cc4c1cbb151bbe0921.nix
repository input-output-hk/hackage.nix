{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "happs-tutorial"; version = "0.4.3"; };
      license = "BSD-3-Clause";
      copyright = "2008 Thomas Hartman";
      maintainer = "thomashartman1 at gmail dot com";
      author = "Thomas Hartman";
      homepage = "";
      url = "";
      synopsis = "A HAppS Tutorial that is is own demo";
      description = "A nice way to learn how to build web sites with HAppS";
      buildType = "Simple";
      };
    components = {
      exes = {
        "happs-tutorial" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HStringTemplate)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.HAppS-Server)
            (hsPkgs.HAppS-Data)
            (hsPkgs.HAppS-State)
            (hsPkgs.containers)
            (hsPkgs.pretty)
            (hsPkgs.pureMD5)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hscolour)
            (hsPkgs.HTTP)
            ];
          };
        };
      };
    }