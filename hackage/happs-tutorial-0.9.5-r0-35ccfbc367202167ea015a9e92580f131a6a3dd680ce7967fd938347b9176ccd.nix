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
        name = "happs-tutorial";
        version = "0.9.5";
      };
      license = "BSD-3-Clause";
      copyright = "2008 Thomas Hartman, 2009 Thomas Hartman & Creighton Hogg";
      maintainer = "Thomas Hartman <thomashartman1@gmail.com>";
      author = "Thomas Hartman, Eelco Lempsink, Creighton Hogg";
      homepage = "";
      url = "";
      synopsis = "A Happstack Tutorial that is its own web 2.0-type demo.";
      description = "A nice way to learn how to build web sites with Happstack";
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
            (hsPkgs.happstack)
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
            (hsPkgs.happstack-helpers)
            (hsPkgs.DebugTraceHelpers)
            (hsPkgs.happstack-server)
            (hsPkgs.happstack-data)
            (hsPkgs.happstack-ixset)
            (hsPkgs.happstack-state)
          ] ++ pkgs.lib.optionals (flags.base4) [
            (hsPkgs.base)
            (hsPkgs.syb)
          ];
        };
      };
    };
  }