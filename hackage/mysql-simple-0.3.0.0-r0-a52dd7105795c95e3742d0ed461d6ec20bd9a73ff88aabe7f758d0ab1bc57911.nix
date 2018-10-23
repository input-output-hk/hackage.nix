{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "mysql-simple";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2011 MailRank, Inc.";
      maintainer = "Paul Rouse <pyr@doynton.org>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/paul-rouse/mysql-simple";
      url = "";
      synopsis = "A mid-level MySQL client library.";
      description = "A mid-level client library for the MySQL database, intended to be\nfast and easy to use.\n\n/Important licensing note/: This library is BSD-licensed under the\nterms of the MySQL FOSS License Exception\n<http://www.mysql.com/about/legal/licensing/foss-exception/>.\n\nSince this library links against the GPL-licensed @mysqlclient@\nlibrary, a non-open-source application that uses it /may/ be\nsubject to the terms of the GPL.";
      buildType = "Simple";
    };
    components = {
      "mysql-simple" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-textual)
          (hsPkgs.bytestring)
          (hsPkgs.mysql)
          (hsPkgs.pcre-light)
          (hsPkgs.old-locale)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.mysql-simple)
          ];
        };
      };
    };
  }