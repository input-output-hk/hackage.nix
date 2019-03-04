{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      systemlib = false;
      fulltextsearch = true;
      urifilenames = true;
      haveusleep = true;
      json1 = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "direct-sqlite"; version = "2.3.24"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 - 2014 Irene Knapp,\n2014 - 2018 Janne Hellsten,\n2018 - 2019 Sergey Bushnyak";
      maintainer = "Sergey Bushnyak <sergey.bushnyak@sigrlami.eu>";
      author = "Irene Knapp <irene.knapp@icloud.com>";
      homepage = "https://github.com/IreneKnapp/direct-sqlite";
      url = "";
      synopsis = "Low-level binding to SQLite3.  Includes UTF8 and BLOB support.";
      description = "This package is not very different from the other SQLite3 bindings out\nthere, but it fixes a few deficiencies I was finding.  As compared to\nbindings-sqlite3, it is slightly higher-level, in that it supports\nmarshalling of data values to and from the database.  In particular,\nit supports strings encoded as UTF8, and BLOBs represented as\nByteStrings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          ];
        libs = if flags.systemlib
          then [ (pkgs."sqlite3") ]
          else (pkgs.lib).optional (!system.isWindows && !system.isAndroid) (pkgs."pthread");
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.direct-sqlite)
            (hsPkgs.directory)
            (hsPkgs.temporary)
            (hsPkgs.text)
            ];
          };
        };
      };
    }