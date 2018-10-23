{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hasktags";
        version = "0.69.2";
      };
      license = "BSD-3-Clause";
      copyright = "The University Court of the University of Glasgow";
      maintainer = "Jack Henahan <jhenahan@me.com>,\nMarc Weber <marco-oweber@gmx.de>,\nMarco Túlio Pimenta Gontijo <marcotmarcot@gmail.com>";
      author = "The GHC Team";
      homepage = "http://github.com/MarcWeber/hasktags";
      url = "";
      synopsis = "Produces ctags \"tags\" and etags \"TAGS\" files for Haskell programs";
      description = "Produces ctags \"tags\" and etags \"TAGS\" files for Haskell programs.";
      buildType = "Simple";
    };
    components = {
      "hasktags" = {
        depends  = [
          (hsPkgs.utf8-string)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.json)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      exes = {
        "hasktags" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hasktags)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
        "test" = {
          depends  = [
            (hsPkgs.utf8-string)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.json)
            (hsPkgs.HUnit)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
      };
      tests = {
        "testsuite" = {
          depends  = [
            (hsPkgs.utf8-string)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.json)
            (hsPkgs.HUnit)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }