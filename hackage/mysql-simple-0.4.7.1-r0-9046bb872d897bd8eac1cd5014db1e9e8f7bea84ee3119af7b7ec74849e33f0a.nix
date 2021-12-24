{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "mysql-simple"; version = "0.4.7.1"; };
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
      "library" = {
        depends = ([
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mysql" or (errorHandler.buildDepError "mysql"))
          (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ (if !(compiler.isGhc && (compiler.version).ge "9.0")
          then [
            (hsPkgs."blaze-textual" or (errorHandler.buildDepError "blaze-textual"))
            ]
          else [ (hsPkgs."vector" or (errorHandler.buildDepError "vector")) ]);
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mysql-simple" or (errorHandler.buildDepError "mysql-simple"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }