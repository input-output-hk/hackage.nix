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
        name = "configurator-ng";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 MailRank, Inc.\nCopyright 2011-2014 Bryan O'Sullivan\nCopyright 2015-2016 Leon P Smith";
      maintainer = "Leon P Smith <leon@melding-monads.com>";
      author = "Bryan O'Sullivan, Leon P Smith";
      homepage = "http://github.com/lpsmith/configurator-ng";
      url = "";
      synopsis = "The next generation of configuration management";
      description = "A configuration management library for programs and daemons.\n\nFeatures include:\n\n* A simple, but flexible, configuration language, supporting several\nof the most commonly needed types of data, along with\ninterpolation of strings from the configuration or the system\nenvironment (e.g. @\$(HOME)@).\n\n* An @import@ directive allows the configuration of a complex\napplication to be split across several smaller files, or common\nconfiguration data to be shared across several applications.\n\n* An expressive applicative/monadic high-level parsing interface\nto gracefully scale to more complicated configuration needs,  with\npowerful diagnostic messaging mechanism.\n\nFor details of the configuration file format, see\n<http://hackage.haskell.org/packages/archive/configurator/latest/doc/html/Data-Configurator.html>.";
      buildType = "Simple";
    };
    components = {
      "configurator-ng" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.critbit)
          (hsPkgs.dlist)
          (hsPkgs.directory)
          (hsPkgs.data-ordlist)
          (hsPkgs.fail)
          (hsPkgs.hashable)
          (hsPkgs.scientific)
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
            (hsPkgs.configurator-ng)
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