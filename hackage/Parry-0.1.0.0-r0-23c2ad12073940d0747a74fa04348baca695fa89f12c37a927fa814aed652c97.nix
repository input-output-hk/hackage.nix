{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Parry";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "pierre-etienne.meunier@lif.univ-mrs.fr";
      author = "Pierre-Etienne Meunier";
      homepage = "http://parry.lif.univ-mrs.fr";
      url = "";
      synopsis = "A proven synchronization server for high performance computing.";
      description = "Parry is a scheduler for the exhaustive exploration of tree-like spaces. It is designed to be robust to client crashes and cluster walltimes, and is guaranteed to never \\\"forget about\\\" a job until it is done.";
      buildType = "Simple";
    };
    components = {
      "Parry" = {
        depends  = if !system.isWindows
          then [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.binary)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.RSA)
            (hsPkgs.network)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.SafeSemaphore)
            (hsPkgs.old-locale)
            (hsPkgs.ghc-prim)
            (hsPkgs.unix)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.binary)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.RSA)
            (hsPkgs.network)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.SafeSemaphore)
            (hsPkgs.old-locale)
            (hsPkgs.ghc-prim)
          ];
      };
    };
  }