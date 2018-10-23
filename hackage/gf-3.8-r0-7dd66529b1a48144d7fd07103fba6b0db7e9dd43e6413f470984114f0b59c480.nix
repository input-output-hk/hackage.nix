{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      interrupt = true;
      server = true;
      network-uri = true;
      custom-binary = true;
      c-runtime = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gf";
        version = "3.8";
      };
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
      "gf" = {
        depends  = (([
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
          (hsPkgs.old-locale)
          (hsPkgs.process)
          (hsPkgs.haskeline)
          (hsPkgs.parallel)
        ] ++ pkgs.lib.optionals (!flags.custom-binary) [
          (hsPkgs.binary)
          (hsPkgs.data-binary-ieee754)
        ]) ++ pkgs.lib.optionals (flags.server) ([
          (hsPkgs.httpd-shed)
          (hsPkgs.network)
          (hsPkgs.json)
          (hsPkgs.cgi)
        ] ++ (if flags.network-uri
          then [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]
          else [
            (hsPkgs.network)
          ]))) ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [
            (hsPkgs.unix)
            (hsPkgs.terminfo)
          ]);
        libs = pkgs.lib.optionals (flags.c-runtime) [
          (pkgs."gu")
          (pkgs."pgf")
        ];
        build-tools = pkgs.lib.optional (flags.c-runtime) (hsPkgs.buildPackages.hsc2hs) ++ [
          (hsPkgs.buildPackages.happy)
          (hsPkgs.buildPackages.alex)
        ];
      };
      exes = {
        "gf" = {
          depends  = [
            (hsPkgs.gf)
            (hsPkgs.base)
          ];
        };
        "pgf-shell" = {
          depends  = [
            (hsPkgs.gf)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.lifted-base)
          ];
        };
      };
      tests = {
        "rgl-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HTF)
            (hsPkgs.process)
            (hsPkgs.HUnit)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
        "gf-tests" = {
          depends  = [
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