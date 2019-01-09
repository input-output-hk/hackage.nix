{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      interrupt = true;
      server = true;
      network-uri = true;
      c-runtime = false;
      };
    package = {
      specVersion = "1.22";
      identifier = { name = "gf"; version = "3.10"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Thomas Hallgren";
      author = "";
      homepage = "http://www.grammaticalframework.org/";
      url = "";
      synopsis = "Grammatical Framework";
      description = "GF, Grammatical Framework, is a programming language for multilingual grammar applications";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.random)
          (hsPkgs.pretty)
          (hsPkgs.mtl)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.time)
          (hsPkgs.time-compat)
          (hsPkgs.process)
          (hsPkgs.haskeline)
          (hsPkgs.parallel)
          ] ++ (pkgs.lib).optionals (flags.server) ([
          (hsPkgs.httpd-shed)
          (hsPkgs.network)
          (hsPkgs.json)
          (hsPkgs.cgi)
          ] ++ (if flags.network-uri
          then [ (hsPkgs.network-uri) (hsPkgs.network) ]
          else [ (hsPkgs.network) ]))) ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) (hsPkgs.terminfo) ]);
        libs = (pkgs.lib).optionals (flags.c-runtime) [
          (pkgs."pgf")
          (pkgs."gu")
          ];
        build-tools = (pkgs.lib).optional (flags.c-runtime) ((hsPkgs.buildPackages).hsc2hs) ++ [
          ((hsPkgs.buildPackages).happy)
          ((hsPkgs.buildPackages).alex)
          ];
        };
      exes = {
        "gf" = { depends = [ (hsPkgs.gf) (hsPkgs.base) ]; };
        "pgf-shell" = {
          depends = [
            (hsPkgs.gf)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.lifted-base)
            ];
          };
        };
      tests = {
        "gf-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            ];
          };
        };
      };
    }