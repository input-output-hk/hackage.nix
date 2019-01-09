{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "happs-tutorial"; version = "0.6.4"; };
      license = "BSD-3-Clause";
      copyright = "2008 Thomas Hartman";
      maintainer = "thomashartman1 at gmail dot com";
      author = "Thomas Hartman, Eelco Lempsink";
      homepage = "";
      url = "";
      synopsis = "A HAppS Tutorial that is is own web 2.0-type demo.";
      description = "A nice way to learn how to build web sites with HAppS";
      buildType = "Simple";
      };
    components = {
      exes = {
        "happs-tutorial" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HStringTemplate)
            (hsPkgs.HStringTemplateHelpers)
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
            (hsPkgs.safe)
            (hsPkgs.old-time)
            (hsPkgs.parsec)
            (hsPkgs.HAppSHelpers)
            (hsPkgs.DebugTraceHelpers)
            ];
          };
        };
      };
    }