{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { par = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "cpsa";
        version = "2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ramsdell@mitre.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Symbolic cryptographic protocol analyzer";
      description = "The Cryptographic Protocol Shapes Analyzer\n(CPSA) attempts to enumerate all essentially\ndifferent executions possible for a\ncryptographic protocol.  We call them the\nshapes of the protocol.  Naturally occurring\nprotocols have only finitely many, indeed very\nfew shapes.  Authentication and secrecy\nproperties are easy to determine from them, as\nare attacks and anomalies.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cpsa" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ] ++ pkgs.lib.optional (flags.par) (hsPkgs.parallel);
        };
        "cpsagraph" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
        "cpsashapes" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
        "cpsaannotations" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
        "cpsaparameters" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
        "cpsapp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }