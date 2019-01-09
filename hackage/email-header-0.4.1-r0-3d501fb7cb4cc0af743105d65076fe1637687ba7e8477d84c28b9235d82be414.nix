{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "email-header"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2018 Kyle Raftogianis";
      maintainer = "Kyle Raftogianis <knrafto@gmail.com>";
      author = "Kyle Raftogianis";
      homepage = "http://github.com/knrafto/email-header";
      url = "";
      synopsis = "Parsing and rendering of email and MIME headers";
      description = "Parsing and rendering of email and MIME headers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.text)
          (hsPkgs.text-icu)
          (hsPkgs.time)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.containers)
            (hsPkgs.email-header)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.time)
            ];
          };
        };
      };
    }