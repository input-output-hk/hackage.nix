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
        name = "configurator";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 MailRank, Inc.\nCopyright 2011-2014 Bryan O'Sullivan";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://github.com/bos/configurator";
      url = "";
      synopsis = "Configuration management";
      description = "A configuration management library for programs and daemons.\n\nFeatures include:\n\n* Automatic, dynamic reloading in response to modifications to\nconfiguration files.\n\n* A simple, but flexible, configuration language, supporting several\nof the most commonly needed types of data, along with\ninterpolation of strings from the configuration or the system\nenvironment (e.g. @\$(HOME)@).\n\n* Subscription-based notification of changes to configuration\nproperties.\n\n* An @import@ directive allows the configuration of a complex\napplication to be split across several smaller files, or common\nconfiguration data to be shared across several applications.\n\nFor details of the configuration file format, see\n<http://hackage.haskell.org/packages/archive/configurator/latest/doc/html/Data-Configurator.html>.";
      buildType = "Simple";
    };
    components = {
      "configurator" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.hashable)
          (hsPkgs.text)
          (hsPkgs.unix-compat)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.configurator)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
          ];
        };
      };
    };
  }