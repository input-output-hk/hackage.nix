{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "sensu-run"; version = "0.7.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016-2019 Mitsutoshi Aoe";
      maintainer = "me@maoe.name";
      author = "Mitsutoshi Aoe";
      homepage = "https://github.com/maoe/sensu-run#readme";
      url = "";
      synopsis = "A tool to send command execution results to Sensu";
      description = "@sensu-run@ is a command line tool to send command execution results to Sensu\nmonitoring server.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sensu-run" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filelock)
            (hsPkgs.filepath)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.lens)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unix-compat)
            (hsPkgs.vector)
            (hsPkgs.wreq)
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
          };
        };
      };
    }