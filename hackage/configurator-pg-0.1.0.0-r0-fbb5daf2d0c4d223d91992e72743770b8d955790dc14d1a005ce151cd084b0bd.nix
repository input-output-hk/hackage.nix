{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "configurator-pg"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 MailRank, Inc.\nCopyright 2011-2014 Bryan O'Sullivan\nCopyright 2015-2016 Leon P Smith\nCopyright 2019 Robert Vollmert";
      maintainer = "rob@vllmrt.net";
      author = "Robert Vollmert";
      homepage = "https://github.com/robx/configurator-pg";
      url = "";
      synopsis = "Reduced parser for configurator-ng config files";
      description = "This module provides a simplified and updated interface to the\nconfiguration file format of\n<https://hackage.haskell.org/package/configurator configurator> and\n<https://hackage.haskell.org/package/configurator-ng configurator-ng>.\nIts aim is primarily to allow updating programs that depend on\nconfigurator-ng to new versions of GHC without changing the\nconfiguration file format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.containers)
          (hsPkgs.protolude)
          (hsPkgs.scientific)
          (hsPkgs.text)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.configurator-pg)
            (hsPkgs.HUnit)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.protolude)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
            ];
          };
        };
      };
    }