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
        name = "itcli";
        version = "0.1.8.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "noah.harvey247 gm";
      author = "theNerd247";
      homepage = "";
      url = "";
      synopsis = "Issue Tracker for the CLI";
      description = "This is a simplified issue tracker designed with the UNIX\nphilosophy in mind. It aims to have a similiar interface\nto git";
      buildType = "Simple";
    };
    components = {
      exes = {
        "itcli" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.uuid)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }