{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "jinquantities"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018-2019 Novadiscovery";
      maintainer = "Novadiscovery <eliott.tixier@novadiscovery.com>";
      author = "Novadiscovery <eliott.tixier@novadiscovery.com>";
      homepage = "http://github.com/eltix/quantities";
      url = "";
      synopsis = "Unit conversion and manipulation library.";
      description = "A library for creating and manipulating physical\nquantities, which are a numerical value\nassociated with a unit of measurement.\nCredit goes to https://github.com/jdreaver/quantities\nfrom which this package is initially a fork. Included\nis an expression parser and a huge list of\npredefined quantities with which to parse\nstrings into a Quantity datatype. Once created,\na quantity can be converted to different units\nor queried for its dimensionality. A user can\nalso operate on quantities arithmetically, and\ndoing so uses automatic unit conversion and\nsimplification.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          ];
        };
      exes = {
        "quantities" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.quantities)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            ];
          };
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.quantities)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            ];
          };
        "hlint" = { depends = [ (hsPkgs.base) (hsPkgs.hlint) ]; };
        "doctest" = {
          depends = [ (hsPkgs.base) (hsPkgs.doctest) (hsPkgs.Glob) ];
          };
        "coverage" = {
          depends = [ (hsPkgs.base) (hsPkgs.process) (hsPkgs.regex-compat) ];
          };
        };
      };
    }