{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      developer = false;
      fast = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "attoparsec-iso8601";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2016 Bryan O'Sullivan\n(c) 2011 MailRank, Inc.";
      maintainer = "Adam Bergmark <adam@bergmark.nl>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/bos/aeson";
      url = "";
      synopsis = "Parsing of ISO 8601 dates, originally from aeson.";
      description = "Parsing of ISO 8601 dates, originally from aeson.";
      buildType = "Simple";
    };
    components = {
      "attoparsec-iso8601" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
    };
  }