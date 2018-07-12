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
          name = "configurator";
          version = "0.0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2011 MailRank, Inc.";
        maintainer = "Bryan O'Sullivan <bos@mailrank.com>";
        author = "Bryan O'Sullivan <bos@mailrank.com>";
        homepage = "http://github.com/mailrank/configurator";
        url = "";
        synopsis = "Configuration management";
        description = "A configuration management library for programs and daemons.\n\nFeatures include:\n\n* Automatic, dynamic reloading in response to modifications to\nconfiguration files.\n\n* A simple, but flexible, configuration language, supporting several\nof the most commonly needed types of data, along with\ninterpolation of strings from the configuration or the system\nenvironment (e.g. @\$(HOME)@).\n\n* Subscription-based notification of changes to configuration\nproperties.\n\n* An @import@ directive allows the configuration of a complex\napplication to be split across several smaller files, or common\nconfiguration data to be shared across several applications.\n\nFor details of the configuration file format, see\n<http://hackage.haskell.org/packages/archive/configurator/latest/doc/html/Data-Configurator.html>.";
        buildType = "Simple";
      };
      components = {
        "configurator" = {
          depends  = [
            hsPkgs.attoparsec-text
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.hashable
            hsPkgs.text
            hsPkgs.unix-compat
            hsPkgs.unordered-containers
          ];
        };
      };
    }