{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "darcs-graph";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "";
      url = "";
      synopsis = "Generate graphs of darcs repository activity";
      description = "Generate graphs of darcs repository activity";
      buildType = "Simple";
    };
    components = {
      exes = {
        "darcs-graph" = {
          depends  = if flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.process)
              (hsPkgs.directory)
              (hsPkgs.old-time)
              (hsPkgs.bytestring)
              (hsPkgs.containers)
            ]
            else [ (hsPkgs.base) ];
        };
      };
    };
  }