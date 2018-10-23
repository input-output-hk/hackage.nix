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
        name = "gargoyle";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) Obsidian Systems LLC 2017";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems LLC";
      homepage = "";
      url = "";
      synopsis = "Automatically spin up and spin down local daemons";
      description = "Gargoyle is a framework for managing daemons from Haskell. In the current release the only requirement is that the daemon be able to communicate over a Unix domain socket. See <https://hackage.haskell.org/package/gargoyle-postgresql gargoyle-postgresql> for a fully worked out example.\n\nTo use Gargoyle the client must:\n\n1. Define a value of the 'Gargoyle' type which specifies how to administer the daemon.\n2. Create an executable whose `main` is 'gargoyleMain'. The name of this executable should match the executable name specified in the '_gargoyle_exec' field of the 'Gargoyle'.\n3. The client will run their code with 'withGargoyle' to gain access to the daemon.";
      buildType = "Simple";
    };
    components = {
      "gargoyle" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.filelock)
          (hsPkgs.network)
          (hsPkgs.process)
        ];
      };
    };
  }