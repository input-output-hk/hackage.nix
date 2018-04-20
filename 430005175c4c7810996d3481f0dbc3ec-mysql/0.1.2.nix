{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "mysql";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2011 MailRank, Inc.\nCopyright 2013 Bryan O'Sullivan <bos@serpentine.com>";
        maintainer = "Paul Rouse <pyr@doynton.org>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "https://github.com/paul-rouse/mysql";
        url = "";
        synopsis = "A low-level MySQL client library.";
        description = "A low-level client library for the MySQL database, implemented as\nbindings to the C @mysqlclient@ API.\n\n/Important licensing note/: This library is BSD-licensed under the\nterms of the MySQL FOSS License Exception\n<http://www.mysql.com/about/legal/licensing/foss-exception/>.\n\nSince this library links against the GPL-licensed @mysqlclient@\nlibrary, a non-open-source application that uses it /may/ be\nsubject to the terms of the GPL.";
        buildType = "Custom";
      };
      components = {
        mysql = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.mysql
            ];
          };
        };
      };
    }